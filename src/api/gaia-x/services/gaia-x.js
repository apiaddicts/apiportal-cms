'use strict';

const crypto = require('crypto');
const jsonld  = require('jsonld');

const GAIA_X_COMPLIANCE_ANCHORS = [
  'did:web:compliance.lab.gaia-x.eu:v1-staging',
  'did:web:compliance.lab.gaia-x.eu',
  'did:web:compliance.gaia-x.eu',
];

module.exports = ({ strapi }) => ({
  async validateCredential(slug) {
    const catalog = await strapi.db.query('api::library-catalog.library-catalog').findOne({
      where: { slug },
    });

    if (!catalog) {
      return { found: false, reason: 'Catálogo no encontrado' };
    }

    if (!catalog.participants) {
      return { found: true, hasCredential: false, reason: 'El catálogo no tiene participant JSON' };
    }

    let credential;
    try {
      credential = typeof catalog.participants === 'string'
        ? JSON.parse(catalog.participants)
        : catalog.participants;
    } catch {
      return { found: true, hasCredential: false, reason: 'El campo participants no es un JSON válido' };
    }

    return { found: true, ...(await this._validate(credential)) };
  },

  async validateCredentialDirect(credential) {
    if (!credential || typeof credential !== 'object') {
      return { found: true, hasCredential: false, reason: 'El campo credential no es un objeto JSON válido' };
    }
    return { found: true, ...(await this._validate(credential)) };
  },

  async _validate(credential) {
    // 1. Comprobar vigencia (soporta issuanceDate/expirationDate y validFrom/validUntil)
    const now = new Date();
    const expiryDate = credential.expirationDate || credential.validUntil;
    const startDate  = credential.issuanceDate   || credential.validFrom;
    const isExpired  = expiryDate ? now > new Date(expiryDate) : false;
    const notYetValid = startDate ? now < new Date(startDate) : false;

    // 2. Comprobar trust anchor
    const certifiedBy = credential.credentialSubject?.['gx:compliance']?.['gx:certifiedBy'];
    let issuerTrusted = false;
    let issuerError   = null;

    if (certifiedBy) {
      issuerTrusted = GAIA_X_COMPLIANCE_ANCHORS.some(a =>
        certifiedBy.includes(a.replace('did:web:', ''))
      );
    } else {
      try {
        await this.resolveDIDKey(credential.proof?.verificationMethod || credential.issuer);
        issuerTrusted = true;
      } catch (err) {
        issuerError = err.message;
      }
    }

    // 3. Verificar firma JWS
    let signatureValid = false;
    let signatureError = null;

    if (!credential.proof?.jws) {
      signatureError = 'El documento no tiene proof/jws';
    } else {
      try {
        const publicKeyJwk = await this.resolveDIDKey(credential.proof.verificationMethod);
        signatureValid = await this.verifyJWS(credential, publicKeyJwk);
      } catch (err) {
        signatureError = err.message;
        strapi.log.warn(`[gaia-x] Verificación de firma fallida: ${err.message}`);
      }
    }

    const isActive = !isExpired && !notYetValid && signatureValid && issuerTrusted;

    return {
      hasCredential: true,
      isActive,
      isExpired,
      notYetValid,
      signatureValid,
      issuerTrusted,
      signatureError: signatureError || null,
      issuerError:    issuerError    || null,
      complianceLabel: credential.credentialSubject?.['gx:compliance']?.['gx:complianceLabel'] || null,
      certifiedBy:     certifiedBy || null,
      trustFrameworkVersion: credential.credentialSubject?.['gx:compliance']?.['gx:trustFrameworkVersion'] || null,
      issuer:        credential.issuer,
      legalName:     credential.credentialSubject?.['gx:legalName'] || credential.credentialSubject?.['schema:name'] || null,
      issuanceDate:  credential.issuanceDate || credential.validFrom  || null,
      expirationDate: expiryDate || null,
    };
  },

  async resolveDIDKey(verificationMethod) {
    if (!verificationMethod) throw new Error('verificationMethod no definido');

    // Separar DID del fragmento (#key-id)
    const [did, keyId] = verificationMethod.split('#');
    const didParts = did.replace('did:web:', '').split(':');
    const host = didParts[0];
    const path = didParts.length > 1
      ? didParts.slice(1).join('/') + '/did.json'
      : '.well-known/did.json';

    const didUrl = `https://${host}/${path}`;

    const response = await fetch(didUrl, {
      headers: { Accept: 'application/json' },
      signal: AbortSignal.timeout(10000),
    });

    if (!response.ok) {
      throw new Error(`No se pudo resolver el DID: ${didUrl} (${response.status})`);
    }

    const didDoc = await response.json();
    const methods = didDoc.verificationMethod || [];
    const method = methods.find(m =>
      m.id === verificationMethod || m.id === `#${keyId}`
    );

    if (!method?.publicKeyJwk) {
      throw new Error(`Clave pública no encontrada para ${verificationMethod}`);
    }

    return method.publicKeyJwk;
  },

  async verifyJWS(credential, publicKeyJwk) {
    const jws = credential.proof?.jws;
    if (!jws) throw new Error('No hay JWS en el proof');

    const parts = jws.split('.');
    if (parts.length !== 3) throw new Error('Formato JWS inválido');

    const [headerB64, , signatureB64] = parts;
    const header = JSON.parse(Buffer.from(headerB64, 'base64url').toString());
    const alg = header.alg;
    const signatureBytes = Buffer.from(signatureB64, 'base64url');

    // Estándar JsonWebSignature2020 con URDNA2015 (JSON-LD canonicalization)
    // verifyData = sha256(URDNA2015(proofOptions)) + sha256(URDNA2015(docSinProof))

    // 1. Proof options: proof sin jws + @context del credential
    const proofOptions = { ...credential.proof };
    delete proofOptions.jws;
    proofOptions['@context'] = credential['@context'];

    // 2. Documento sin proof
    const docWithoutProof = { ...credential };
    delete docWithoutProof.proof;

    // 3. Canonicalizar ambos con URDNA2015
    const [normalizedProof, normalizedDoc] = await Promise.all([
      jsonld.canonize(proofOptions, { algorithm: 'URDNA2015', format: 'application/n-quads' }),
      jsonld.canonize(docWithoutProof, { algorithm: 'URDNA2015', format: 'application/n-quads' }),
    ]);


    // 4. SHA256 de cada parte → verifyData (64 bytes)
    const hashProof = crypto.createHash('sha256').update(normalizedProof).digest();
    const hashDoc   = crypto.createHash('sha256').update(normalizedDoc).digest();
    const verifyData = Buffer.concat([hashProof, hashDoc]);

    // 5. Signing input para JWS detached b64:false
    const signingInput = Buffer.concat([
      Buffer.from(headerB64 + '.', 'ascii'),
      verifyData,
    ]);

    if (alg === 'RS256') {
      const key = await crypto.subtle.importKey(
        'jwk',
        publicKeyJwk,
        { name: 'RSASSA-PKCS1-v1_5', hash: 'SHA-256' },
        false,
        ['verify']
      );
      const result = await crypto.subtle.verify(
        { name: 'RSASSA-PKCS1-v1_5' },
        key,
        signatureBytes,
        signingInput
      );
      return result;
    }

    if (alg === 'PS256') {
      const key = await crypto.subtle.importKey(
        'jwk',
        publicKeyJwk,
        { name: 'RSA-PSS', hash: 'SHA-256' },
        false,
        ['verify']
      );
      const result = await crypto.subtle.verify(
        { name: 'RSA-PSS', saltLength: 32 },
        key,
        signatureBytes,
        signingInput
      );
      return result;
    }

    throw new Error(`Algoritmo no soportado: ${alg}`);
  },

  // RFC8785 JCS — canonicalización determinista de JSON
  canonicalize(value) {
    if (value === null || typeof value !== 'object') {
      return JSON.stringify(value);
    }
    if (Array.isArray(value)) {
      return '[' + value.map(v => this.canonicalize(v)).join(',') + ']';
    }
    const sortedKeys = Object.keys(value).sort();
    const pairs = sortedKeys.map(k => JSON.stringify(k) + ':' + this.canonicalize(value[k]));
    return '{' + pairs.join(',') + '}';
  },
});

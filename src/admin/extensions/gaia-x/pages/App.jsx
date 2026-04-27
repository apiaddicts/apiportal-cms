import React, { useState } from 'react';
import {
  Box,
  Button,
  Field,
  Flex,
  Typography,
  Badge,
  Divider,
  Tabs,
  Textarea,
} from '@strapi/design-system';
import { Check, Cross } from '@strapi/icons';

const STRAPI_URL = window.location.origin;

export default function GaiaXPage() {
  const [mode, setMode] = useState('slug');
  const [slug, setSlug] = useState('');
  const [credentialJson, setCredentialJson] = useState('');
  const [jsonError, setJsonError] = useState(null);
  const [result, setResult] = useState(null);
  const [error, setError] = useState(null);
  const [loading, setLoading] = useState(false);

  const handleJsonChange = (e) => {
    setCredentialJson(e.target.value);
    setJsonError(null);
  };

  const buildBody = () => {
    if (mode === 'slug') {
      return { slug };
    }
    try {
      const parsed = JSON.parse(credentialJson);
      return { credential: parsed };
    } catch (err) {
      setJsonError(`JSON inválido: ${err.message}`);
      return null;
    }
  };

  const handleValidate = async () => {
    setError(null);
    setResult(null);

    const body = buildBody();
    if (!body) return;

    setLoading(true);

    try {
      const res = await fetch(`${STRAPI_URL}/api/gaia-x/validate`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      });

      const data = await res.json();

      if (!res.ok) {
        setError(data?.error?.message || 'Error al validar la credencial');
      } else if (!data.found) {
        setError(data.reason || 'Catálogo no encontrado');
      } else if (!data.hasCredential) {
        setError(data.reason || 'El catálogo no tiene participant JSON');
      } else {
        setResult(data);
      }
    } catch {
      setError('No se pudo conectar con el servidor');
    } finally {
      setLoading(false);
    }
  };

  const isDisabled = mode === 'slug' ? !slug.trim() : !credentialJson.trim();

  return (
    <Box padding={8} background="neutral100">
      <Typography variant="alpha" as="h1">
        Validador de Credenciales Gaia-X
      </Typography>
      <Typography variant="epsilon" textColor="neutral600" as="p" style={{ marginTop: 4 }}>
        Valida la credencial Gaia-X verificando firma, emisor y vigencia.
      </Typography>

      <Box marginTop={6} padding={6} background="neutral0" shadow="filterShadow" hasRadius>
        <Tabs.Root
          defaultValue="slug"
          onValueChange={(val) => {
            setMode(val);
            setError(null);
            setResult(null);
            setJsonError(null);
          }}
        >
          <Tabs.List aria-label="Modo de entrada">
            <Tabs.Trigger value="slug">Por Slug</Tabs.Trigger>
            <Tabs.Trigger value="json">Por JSON</Tabs.Trigger>
          </Tabs.List>

          <Box marginTop={4}>
            <Tabs.Content value="slug">
              <Field.Root name="slug">
                <Field.Label>Slug del catálogo</Field.Label>
                <Field.Input
                  placeholder="ej: pethub-catalog"
                  value={slug}
                  onChange={(e) => setSlug(e.target.value)}
                />
                <Field.Hint>Slug del LibraryCatalog que contiene el participant JSON</Field.Hint>
              </Field.Root>
            </Tabs.Content>

            <Tabs.Content value="json">
              <Field.Root name="credential" error={jsonError}>
                <Field.Label>Credential JSON</Field.Label>
                <Textarea
                  placeholder='{ "@context": [...], "type": [...], "proof": { "jws": "..." }, ... }'
                  value={credentialJson}
                  onChange={handleJsonChange}
                  hasError={Boolean(jsonError)}
                  style={{ minHeight: 200, fontFamily: 'monospace', fontSize: 12 }}
                />
                {jsonError && (
                  <Typography variant="pi" textColor="danger600" style={{ marginTop: 4 }}>
                    {jsonError}
                  </Typography>
                )}
                <Field.Hint>Pega directamente el JSON del Verifiable Credential</Field.Hint>
              </Field.Root>
            </Tabs.Content>
          </Box>
        </Tabs.Root>

        <Box marginTop={4}>
          <Button onClick={handleValidate} loading={loading} disabled={isDisabled} size="L">
            Validar credencial
          </Button>
        </Box>
      </Box>

      {error && (
        <Box marginTop={4} padding={4} background="danger100" hasRadius>
          <Flex gap={2} alignItems="center">
            <Cross fill="danger600" />
            <Typography textColor="danger600">{error}</Typography>
          </Flex>
        </Box>
      )}

      {result && (
        <Box marginTop={6} padding={6} background="neutral0" shadow="filterShadow" hasRadius>
          <Flex justifyContent="space-between" alignItems="center" marginBottom={4}>
            <Typography variant="beta">Resultado</Typography>
            <Badge
              backgroundColor={result.isActive ? 'success100' : 'danger100'}
              textColor={result.isActive ? 'success700' : 'danger700'}
            >
              {result.isActive ? '✓ Activa y válida' : '✗ Inactiva o inválida'}
            </Badge>
          </Flex>

          <Divider />

          <Box marginTop={4}>
            <InfoRow label="Compliance Label" value={result.complianceLabel} />
            <InfoRow label="Certified By" value={result.certifiedBy} />
            <InfoRow label="Trust Framework Version" value={result.trustFrameworkVersion} />
            <InfoRow label="Emisor" value={result.issuer} />
            <InfoRow label="Nombre legal" value={result.legalName} />
            <InfoRow label="Fecha de emisión" value={formatDate(result.issuanceDate)} />
            <InfoRow
              label="Fecha de expiración"
              value={result.expirationDate ? formatDate(result.expirationDate) : 'Sin expiración'}
            />
          </Box>

          <Divider marginTop={4} />

          <Box marginTop={4}>
            <Typography variant="sigma" textColor="neutral600">CHECKS DE VALIDACIÓN</Typography>
            <Box marginTop={3}>
              <CheckRow label="Firma JWS válida" valid={result.signatureValid} error={result.signatureError} />
              <CheckRow label="Emisor en trust anchors Gaia-X" valid={result.issuerTrusted} error={result.issuerError} />
              <CheckRow label="Credencial no expirada" valid={!result.isExpired} />
            </Box>
          </Box>
        </Box>
      )}
    </Box>
  );
}

function InfoRow({ label, value }) {
  if (!value) return null;
  return (
    <Flex gap={2} marginBottom={2} alignItems="flex-start">
      <Typography variant="sigma" textColor="neutral600" style={{ minWidth: 200 }}>
        {label}
      </Typography>
      <Typography textColor="neutral800" style={{ wordBreak: 'break-all' }}>
        {value}
      </Typography>
    </Flex>
  );
}

function CheckRow({ label, valid, error }) {
  return (
    <Flex gap={2} marginBottom={2} alignItems="center">
      {valid ? <Check fill="success600" /> : <Cross fill="danger600" />}
      <Typography textColor={valid ? 'success600' : 'danger600'}>{label}</Typography>
      {error && <Typography textColor="neutral500" variant="pi">({error})</Typography>}
    </Flex>
  );
}

function formatDate(dateStr) {
  if (!dateStr) return '-';
  return new Date(dateStr).toLocaleString('es-ES', { dateStyle: 'medium', timeStyle: 'short' });
}

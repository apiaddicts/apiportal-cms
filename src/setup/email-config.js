const RESET_PASSWORD_HTML = `
<div style="background:#f4f6f8; padding:30px; font-family:Arial, sans-serif;">
  <div style="max-width:600px; margin:auto; background:#ffffff; padding:30px; border-radius:8px;">
    <h2 style="color:#0f172a; margin-bottom:10px;">Restablecer contraseña</h2>
    <p style="color:#444; font-size:15px;">Hola <strong><%= USER.username %></strong>,</p>
    <p style="color:#444; font-size:15px;">Hemos recibido una solicitud para restablecer la contraseña asociada al correo <strong><%= USER.email %></strong>.</p>
    <div style="text-align:center; margin:30px 0;">
      <a href="<%= URL %>?code=<%= TOKEN %>" style="background:#2563eb; color:#ffffff; padding:12px 28px; text-decoration:none; border-radius:6px; font-weight:bold; display:inline-block;">
        Cambiar contraseña
      </a>
    </div>
    <p style="font-size:14px; color:#444;">Si el botón no funciona, copia y pega el siguiente enlace en tu navegador:</p>
    <p style="font-size:13px; color:#2563eb; word-break:break-all; background:#f1f5f9; padding:10px; border-radius:4px;"><%= URL %>?code=<%= TOKEN %></p>
    <p style="font-size:13px; color:#777; margin-top:20px;">Si no solicitaste este cambio, puedes ignorar este correo con total seguridad.</p>
  </div>
</div>`;

const EMAIL_CONFIRMATION_HTML = `
<div style="background:#f4f6f8; padding:30px; font-family:Arial, sans-serif;">
  <div style="max-width:600px; margin:auto; background:#ffffff; padding:30px; border-radius:8px;">
    <h2 style="color:#0f172a; margin-bottom:10px;">Confirma tu correo electrónico</h2>
    <p style="color:#444; font-size:15px;">Hola <strong><%= USER.username %></strong>,</p>
    <p style="color:#444; font-size:15px;">¡Gracias por registrarte! Para activar tu cuenta, por favor confirma tu dirección de correo electrónico haciendo clic en el siguiente botón:</p>
    <div style="text-align:center; margin:30px 0;">
      <a href="<%= URL %>?confirmation=<%= CODE %>" style="background:#2563eb; color:#ffffff; padding:12px 28px; text-decoration:none; border-radius:6px; font-weight:bold; display:inline-block;">
        Confirmar correo
      </a>
    </div>
    <p style="font-size:14px; color:#444;">Si el botón no funciona, copia y pega el siguiente enlace en tu navegador:</p>
    <p style="font-size:13px; color:#2563eb; word-break:break-all; background:#f1f5f9; padding:10px; border-radius:4px;"><%= URL %>?confirmation=<%= CODE %></p>
    <p style="font-size:13px; color:#777; margin-top:20px;">Si no creaste esta cuenta, puedes ignorar este correo con total seguridad.</p>
  </div>
</div>`;

async function setupAuthSettings(strapi) {
  try {
    const advancedStore = strapi.store({ type: 'plugin', name: 'users-permissions', key: 'advanced' });
    const advancedSettings = await advancedStore.get();

    await advancedStore.set({
      value: {
        ...advancedSettings,
        email_confirmation: true,
        email_reset_password: "http://localhost:3000/auth/reset-password",
        email_confirmation_redirection: "http://localhost:3000/auth/email-confirmed",
      }
    });

    const emailStore = strapi.store({ type: 'plugin', name: 'users-permissions', key: 'email' });
    const emailTemplates = await emailStore.get();

    emailTemplates['reset_password'].options.from.name = "Administration Panel";
    emailTemplates['reset_password'].options.subject = "Restablecer contraseña";
    emailTemplates['reset_password'].options.message = RESET_PASSWORD_HTML;

    emailTemplates['email_confirmation'].options.from.name = "Administration Panel";
    emailTemplates['email_confirmation'].options.subject = "Confirma tu correo electrónico";
    emailTemplates['email_confirmation'].options.message = EMAIL_CONFIRMATION_HTML;

    await emailStore.set({ value: emailTemplates });
  } catch (err) {
    console.error(err.message);
  }
}

module.exports = { setupAuthSettings };
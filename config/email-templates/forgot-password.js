const subject = `Cambiar Contraseña`;

const html = `
<div style="font-family: Arial, sans-serif; color: #333; max-width: 600px; margin: auto; padding: 20px; background-color: #f9f9f9; border: 1px solid #ddd;">
    <h2 style="color: #007ac3!important;">Solicitud de cambio de contraseña</h2>
  
    <p>Hola <%= user.firstname %>,</p>
  
    <p>Hemos recibido una solicitud para cambiar tu contraseña. ¡No te preocupes! Puedes cambiarla fácilmente haciendo clic en el siguiente enlace:</p>
  
    <p style="text-align: center;">
       <a href="<%= url %>" target="_blank" style="background-color: #007ac3!important; color: #ffffff; padding: 10px 20px; text-decoration: none; border-radius: 5px;">Cambiar Contraseña</a>
    </p>
  
    <p>Si no solicitaste este cambio, puedes ignorar este mensaje y tu contraseña seguirá siendo la misma.</p>
  
    <p style="color: #777;">Atentamente,<br>El equipo de API Market</p>
</div>
`;

const text = `
Hola <%= user.firstname %>,
Hemos recibido una solicitud para cambiar tu contraseña. Puedes hacer clic en el siguiente enlace: <%= url %>
Si no solicitaste este cambio, puedes ignorar este mensaje.
`;

module.exports = {
  subject,
  text,
  html,
};
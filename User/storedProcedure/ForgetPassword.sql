-- Procedimiento para olvidar la contraseña
DELIMITER // 
CREATE PROCEDURE ForgetPassword(
  IN p_email varchar(60),
  IN p_phone varchar(12),
  IN p_new_password varchar(100)
) BEGIN
UPDATE
  USER
SET
  password_user = p_new_password
WHERE
  email_user = p_email
  AND phone_user = p_phone;

END // 
DELIMITER;
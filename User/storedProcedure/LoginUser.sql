-- Procedimiento para iniciar sesión
DELIMITER / / 
CREATE PROCEDURE LoginUser(IN p_email VARCHAR(60)) BEGIN
SELECT
  password_user
FROM
  USER
WHERE
  email_user = p_email;

END / / DELIMITER;
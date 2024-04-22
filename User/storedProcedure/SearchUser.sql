DELIMITER //
CREATE PROCEDURE SearchUser(
  IN p_email_user VARCHAR(60),
  IN p_phone_user VARCHAR(10)
)
BEGIN 
  SELECT id_user FROM USER 
  WHERE email_user = p_email_user AND phone_user = p_phone_user;
END // 

-- Restaurar el delimitador predeterminado
DELIMITER ;
DELIMITER //
CREATE PROCEDURE FindUserById(
  IN p_user_id INT
)
BEGIN
  SELECT password_user FROM USER WHERE id_user = p_user_id;
END //
DELIMITER ;

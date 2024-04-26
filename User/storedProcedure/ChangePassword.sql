DELIMITER //
CREATE PROCEDURE ChangePassword(
    IN p_id_user INT,
    IN p_new_password VARCHAR(100)
)
BEGIN
    UPDATE USER SET password_user = p_new_password WHERE id_user = p_id_user;
END //
DELIMITER ;
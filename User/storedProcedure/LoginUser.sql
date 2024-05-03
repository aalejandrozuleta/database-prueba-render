DELIMITER //
CREATE PROCEDURE LoginUser(IN p_email VARCHAR(60)) BEGIN
SELECT id_user, password_user, user_type
FROM USER
WHERE email_user = p_email;
END //
DELIMITER ;
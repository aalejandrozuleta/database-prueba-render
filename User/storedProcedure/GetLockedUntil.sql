DELIMITER //
CREATE PROCEDURE GetLockedUntil(
    IN p_user_email VARCHAR(60)
)
BEGIN
    SELECT locked_until FROM USER WHERE email_user = p_user_email;
END //
DELIMITER ;

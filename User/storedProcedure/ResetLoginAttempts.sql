DELIMITER //
CREATE PROCEDURE ResetLoginAttempts(
    IN p_user_email VARCHAR(60)
)
BEGIN
    UPDATE USER SET login_attempts = 0 WHERE email_user = p_user_email;
END //
DELIMITER ;

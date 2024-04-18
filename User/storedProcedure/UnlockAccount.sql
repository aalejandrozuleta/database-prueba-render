DELIMITER //
CREATE PROCEDURE UnlockAccount(
    IN p_user_email VARCHAR(60)
)
BEGIN
    UPDATE USER SET login_attempts = 0, locked_until = NULL WHERE email_user = p_user_email;
END //
DELIMITER ;

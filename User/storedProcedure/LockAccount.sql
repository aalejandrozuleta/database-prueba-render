DELIMITER //

CREATE PROCEDURE LockAccount(
    IN p_user_email VARCHAR(60)
)
BEGIN
    DECLARE max_attempts INT DEFAULT 5; 
    DECLARE current_attempts INT;
    DECLARE lock_duration INT DEFAULT 5;
    
    SELECT login_attempts INTO current_attempts FROM USER WHERE email_user = p_user_email;
    
    IF current_attempts + 1 >= max_attempts THEN
        UPDATE USER SET locked_until = DATE_ADD(NOW(), INTERVAL lock_duration MINUTE) WHERE email_user = p_user_email;
    ELSE
        UPDATE USER SET login_attempts = current_attempts + 1 WHERE email_user = p_user_email;
    END IF;
END //
DELIMITER ;

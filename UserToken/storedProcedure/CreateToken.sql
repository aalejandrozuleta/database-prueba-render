DELIMITER //

CREATE PROCEDURE CreateToken (
  IN p_code VARCHAR(100),
  IN p_user_id INT,
  IN p_expiration DATETIME
)
BEGIN 
  INSERT INTO USERTOKEN (code, expiration, id_user) VALUES (p_code, p_expiration, p_user_id);
END //

DELIMITER ;

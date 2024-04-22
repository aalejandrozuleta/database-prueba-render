DELIMITER //

CREATE PROCEDURE FindToken (
  IN p_code VARCHAR(100)
)
BEGIN
  SELECT  expiration, id_user
  FROM USERTOKEN
  WHERE code = p_code;
END //

DELIMITER ;

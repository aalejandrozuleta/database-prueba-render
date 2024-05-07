DELIMITER //
CREATE PROCEDURE EditUser(
    IN _id_user INT,
    IN _name_user VARCHAR(40),
    IN _lastName_user VARCHAR(40),
    IN _country_user VARCHAR(40),
    IN _phone_user VARCHAR(10),
    IN _user_type ENUM('Usuario', 'Comerciante')
)
BEGIN
    UPDATE USER
    SET name_user = _name_user,
        lastName_user = _lastName_user,
        country_user = _country_user,
        phone_user = _phone_user,
        user_type = _user_type
    WHERE id_user = _id_user;
END //
DELIMITER ;
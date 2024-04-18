DELIMITER //
CREATE PROCEDURE CreateUser(
    IN _name_user VARCHAR(40),
    IN _lastName_user VARCHAR(40),
    IN _country_user VARCHAR(40),
    IN _phone_user VARCHAR(10),
    IN _email_user VARCHAR(60),
    IN _password_user VARCHAR(100),
    IN _user_type ENUM('Usuario', 'Comerciante')
)
BEGIN
    INSERT INTO USER(name_user, lastName_user, country_user, phone_user, email_user, password_user, user_type)
    VALUES (_name_user, _lastName_user, _country_user, _phone_user, _email_user, _password_user, _user_type);
END //
DELIMITER ;

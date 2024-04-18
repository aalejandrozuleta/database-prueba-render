-- Procedimiento para crear una empresa
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS CreateCompany(
    IN p_company_name VARCHAR(100),
    IN p_company_description VARCHAR(255),
    IN p_company_owner INT,
    IN p_location VARCHAR(255)
)
BEGIN
    INSERT INTO Company(company_name, company_description, company_owner, location)
    VALUES (p_company_name, p_company_description, p_company_owner, p_location);
END //
DELIMITER ;

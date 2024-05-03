-- Procedimiento para crear una empresa
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS CreateCompany(
    IN p_company_name VARCHAR(40),
    IN p_company_description VARCHAR(255),
    IN p_company_address VARCHAR(255),
    IN p_company_phone VARCHAR(11),
    IN p_company_owner INT
)
BEGIN
    INSERT INTO COMPANY(company_name, company_description, company_address, company_phone, company_owner)
    VALUES (p_company_name, p_company_description, p_company_address, p_company_phone, p_company_owner);
END //
DELIMITER ;
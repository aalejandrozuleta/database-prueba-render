-- Procedimiento para editar información de una empresa
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS EditCompany(
    IN p_company_id INT,
    IN p_new_company_name VARCHAR(100),
    IN p_new_company_description VARCHAR(255),
    IN p_new_location VARCHAR(255)
)
BEGIN
    UPDATE Company
    SET 
        company_name = p_new_company_name,
        company_description = p_new_company_description,
        location = p_new_location
    WHERE id_company = p_company_id;
END //
DELIMITER ;

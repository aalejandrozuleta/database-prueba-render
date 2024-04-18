-- Procedimiento para eliminar una empresa
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS DeleteCompany(
    IN p_company_id INT
)
BEGIN
    DELETE FROM Company WHERE id_company = p_company_id;
END //
DELIMITER ;

-- Procedimiento para editar una categoría
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS EditCategory(
    IN p_category_id INT,
    IN p_new_category_name VARCHAR(100),
    IN p_new_description VARCHAR(255)
)
BEGIN
    UPDATE Category
    SET 
        category_name = p_new_category_name,
        description = p_new_description
    WHERE id_category = p_category_id;
END //
DELIMITER ;

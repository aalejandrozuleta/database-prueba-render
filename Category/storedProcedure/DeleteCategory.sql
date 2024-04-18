-- Procedimiento para eliminar una categoría
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS DeleteCategory(
    IN p_category_id INT
)
BEGIN
    DELETE FROM Category WHERE id_category = p_category_id;
END //
DELIMITER ;

-- Procedimiento para crear una categoría
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS CreateCategory(
    IN p_category_name VARCHAR(100),
    IN p_description VARCHAR(255)
)
BEGIN
    INSERT INTO Category(category_name, description)
    VALUES (p_category_name, p_description);
END //
DELIMITER ;

-- Procedimiento para asignar categorías a un producto
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS AssignCategoriesToProduct(
    IN p_product_id INT,
    IN p_category_ids VARCHAR(255) -- IDs de categoría separados por comas
)
BEGIN
    DECLARE category_id INT;
    DECLARE done INT DEFAULT FALSE;
    DECLARE category_cursor CURSOR FOR SELECT id_category FROM Category WHERE FIND_IN_SET(id_category, p_category_ids);
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN category_cursor;
    read_loop: LOOP
        FETCH category_cursor INTO category_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO ProductCategory(id_product, id_category) VALUES (p_product_id, category_id);
    END LOOP;
    CLOSE category_cursor;
END //
DELIMITER ;

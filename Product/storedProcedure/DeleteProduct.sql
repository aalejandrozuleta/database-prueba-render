-- Procedimiento para eliminar un producto
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS DeleteProduct(
    IN p_product_id INT
)
BEGIN
    DELETE FROM Product WHERE id_product = p_product_id;
END //
DELIMITER ;

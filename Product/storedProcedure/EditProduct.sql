-- Procedimiento para editar un producto
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS EditProduct(
    IN p_product_id INT,
    IN p_new_product_name VARCHAR(100),
    IN p_new_product_description VARCHAR(255),
    IN p_new_product_price DECIMAL(10, 2),
    IN p_new_discount DECIMAL(10, 2),
    IN p_new_stock INT,
    IN p_new_company_id INT
)
BEGIN
    UPDATE Product
    SET 
        product_name = p_new_product_name,
        product_description = p_new_product_description,
        product_price = p_new_product_price,
        discount = p_new_discount,
        stock = p_new_stock,
        company_id = p_new_company_id
    WHERE id_product = p_product_id;
END //
DELIMITER ;

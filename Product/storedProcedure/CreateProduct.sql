-- Procedimiento para crear un producto
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS CreateProduct(
    IN p_product_name VARCHAR(100),
    IN p_product_description VARCHAR(255),
    IN p_product_price DECIMAL(10, 2),
    IN p_discount DECIMAL(10, 2),
    IN p_stock INT,
    IN p_company_id INT
)
BEGIN
    INSERT INTO Product(product_name, product_description, product_price, discount, stock, company_id)
    VALUES (p_product_name, p_product_description, p_product_price, p_discount, p_stock, p_company_id);
END //
DELIMITER ;

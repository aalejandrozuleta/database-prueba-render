-- Tabla de productos
CREATE TABLE PRODUCT (
  id_product int PRIMARY KEY AUTO_INCREMENT,
  -- Identificador único del producto
  product_name varchar(100) not null,
  -- Nombre del producto
  product_description varchar(255) not null,
  -- Descripción del producto
  product_price decimal(10, 2) not null,
  -- Precio del producto
  product_discount decimal(10, 2),
  -- Descuento aplicable al producto
  product_final_price AS (product_price - (product_price * discount / 100)),
  -- Precio final del producto calculado
  product_stock int not null,
  -- Stock del producto
  company_id int,
  -- Identificador de la empresa que vende el producto
  FOREIGN KEY (company_id) REFERENCES Company(id_company) ON DELETE CASCADE -- Si se elimina la empresa, se eliminan sus productos
);
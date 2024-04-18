-- Tabla de relación Producto-Categoría
CREATE TABLE PRODUCTCATEGORY (
  id_ProductCategory int(11) NOT NULL AUTO_INCREMENT,
  -- identificador primario de ka tabla
  id_product int,
  -- Identificador del producto
  id_category int,
  -- Identificador de la categoría
  FOREIGN KEY (id_product) REFERENCES Product(id_product) ON DELETE CASCADE,
  FOREIGN KEY (id_category) REFERENCES Category(id_category)
);
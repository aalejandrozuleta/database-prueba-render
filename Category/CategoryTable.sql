-- Tabla de categorías de productos
CREATE TABLE CATEGORY (
  id_category int PRIMARY KEY AUTO_INCREMENT,
  -- Identificador único de la categoría
  category_name varchar(100) not null,
  -- Nombre de la categoría
  description varchar(255) -- Descripción de la categoría
);
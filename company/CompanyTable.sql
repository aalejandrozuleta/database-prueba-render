CREATE TABLE COMPANY (
  id_company int PRIMARY KEY AUTO_INCREMENT,
  -- Identificador único de la empresa
  company_name varchar(40) not null UNIQUE,
  -- Nombre de la empresa
  company_description varchar(255),
  -- Descripción de la empresa
  company_address varchar(255) not null,
  -- Ubicación de la empresa
  company_phone varchar(11) not null,
  -- Teléfono de la empresa
  company_owner int,
  -- Identificador del usuario que es el propietario de la empresa
  FOREIGN KEY (company_owner) REFERENCES USER(id_user) ON DELETE CASCADE
    -- Llave foránea que referencia al propietario de la empresa
);
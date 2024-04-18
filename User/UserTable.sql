-- Tabla de usuarios
CREATE TABLE USER (
  id_user INT PRIMARY KEY AUTO_INCREMENT,
  -- Identificador único del usuario
  name_user VARCHAR(40) NOT NULL,
  -- Nombre del usuario
  lastName_user VARCHAR(40),
  -- Apellido del usuario
  country_user VARCHAR(40),
  -- País del usuario
  phone_user VARCHAR(10),
  -- Teléfono del usuario con un máximo de 10 dígitos
  email_user VARCHAR(60) NOT NULL UNIQUE,
  -- Correo electrónico del usuario
  password_user VARCHAR(100) NOT NULL,
  -- Contraseña del usuario (hash almacenado)
  user_type ENUM('Usuario', 'Comerciante') DEFAULT 'Usuario',
  -- Tipo de usuario (Usuario o Comerciante)
  login_attempts INT DEFAULT 0,
  -- Contador de intentos de login fallidos
  locked_until DATETIME
  -- Fecha y hora hasta la que la cuenta está bloqueada temporalmente 
);
CREATE TABLE USERTOKEN (
  code VARCHAR(100) PRIMARY KEY,
  expiration DATETIME,
  id_user INT, 
  FOREIGN KEY (id_user) REFERENCES USER(id_user)
);

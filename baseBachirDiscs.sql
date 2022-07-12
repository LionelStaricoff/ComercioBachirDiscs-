CREATE DATABASE IF NOT EXISTS BachirDiscs
 DEFAULT CHARACTER SET UTF8 COLLATE UTF8_SPANISH_CI;
 
  
 CREATE TABLE clientes (
     id_cliente INTEGER PRIMARY KEY AUTO_INCREMENT,
     telefono INTEGER (18),
     nombre VARCHAR (40) NOT NULL,
     apellido VARCHAR (40) NOT NULL
);

CREATE TABLE productos (
     id_productos INTEGER PRIMARY KEY AUTO_INCREMENT,
     precio TINYINT (10),
     nombre_producto VARCHAR (40) NOT NULL
);

drop table pedidos;

CREATE TABLE pedidos (
     id_pedidos INTEGER PRIMARY KEY AUTO_INCREMENT,
     id_cliente INTEGER NOT NULL,
     id_productos INTEGER NOT NULL,
     cantidad tinyint (3) NOT NULL,
     total INTEGER (10) NOT NULL,
     FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
     FOREIGN KEY (id_productos) REFERENCES productos (id_productos)
);
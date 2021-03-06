/*1.1*/
/* 1. Crear una base de datos con el 
nombre LABORATORIO. */
CREATE DATABASE LABORATORIO;
/*2 poner en uso la base de datos generada
 en el paso anterior*/
 USE LABORATORIO;
/*1.3 Crear una tabla facturas dentro de la base de datos 
 con la estructura que se muestra en la diapositiva */
 
 CREATE TABLE FACTURAS (
 LETRA CHAR,
 NUMERO INT,
 CLIENTEID INT,
 ARTICULOID INT,
 FECHA DATE,
 MONTO DOUBLE,
 PRIMARY KEY (LETRA, NUMERO) );
 DESCRIBE FACTURAS;
 
 CREATE TABLE ARTICULOS (
 ARTICULOID INT PRIMARY KEY,
 NOMBRE VARCHAR (50),
 PRECIO DOUBLE,
 STOCK INT
 );
 
 DESC ARTICULOS;
 
 CREATE TABLE CLIENTES (
 CLIENTEID INT PRIMARY KEY,
 NOMBRE VARCHAR(25),
 APELLIDO VARCHAR (25),
 CUIT CHAR (16),
 DIRECCION VARCHAR (50),
 COMENTARIOS VARCHAR(50));
 DESC CLIENTES; 
 
# SHOW TABLES

SHOW tables;

ALTER TABLE FACTURAS
CHANGE CLIENTEID IDCLIENTE INT;
ALTER TABLE FACTURAS
CHANGE ARTICULOID IDARTICULO INT,
MODIFY MONTO DOUBLE UNSIGNED;

DESC FACTURAS;

ALTER TABLE ARTICULOS
CHANGE ARTICULOID IDARTICULO INT, MODIFY NOMBRE VARCHAR (75), MODIFY PRECIO DOUBLE UNSIGNED NOT NULL,
MODIFY STOCK INT UNSIGNED NOT NULL;

DESC ARTICULOS;

DESC CLIENTES;

ALTER TABLE CLIENTES
CHANGE CLIENTEID IDCLIENTE INT, 
MODIFY NOMBRE VARCHAR (30) NOT NULL, MODIFY APELLIDO VARCHAR (35) NOT NULL, 
CHANGE COMENTARIOS OBSERVACIONES
 TINYTEXT;
 DESC CLIENTES;
 
 
/*1.3.1 Cargar 5 registros en la tabla FACTURAS
*/ USE LABORATORIO;
DESC FACTURAS;
INSERT INTO FACTURAS VALUES ('A', 2800, 14, 335, '2022-06-23', 1382.56),
('B', 1400, 28, 770, '2021-03-18', 2275.20),
('C', 700, 42, 698, '2020-05-15', 2157.56),
('D', 900, 89, 777, '2019-03-21', 2655.25),
('E', 1020, 99, 887, '1979-07-26' , 1457.89);

SELECT * FROM FACTURAS;

/*1.3.4 CARGA CUATRO REGISTROS EN LA TABLA ARTICULOS*/
DESC ARTICULOS;
INSERT INTO ARTICULOS VALUES (563, 'Webcam con micrófono', 513.35, 39), 
(157,'Apple AirPods', 898.25, 152),
( 335, 'LavaSecaRopa automático', 754.24, 656),
(411, 'Gloria Trevi / Gloria/ CD/ DVD', 874.65, 455);

SELECT * FROM ARTICULOS;
DESC CLIENTES;
INSERT INTO CLIENTES VALUES(5, 'Santiago', 'Gonzalez','20-38648754-3', 'Uriburu 5656', 'VIP' ),
('8', 'Ramiro', 'Fernandez', '20-38645789-2', 'Avellaneda 589', 'VIP'),
('45', 'Nadia', 'Gordillo', '25-3654879-2', 'San Martin 78', 'GBA'),
('46', 'Fernando', 'Martin', '32-6598785-2', 'Dorrego 55', 'VIP'),
('555', 'Melina', 'Morales', '65-666555444-0', 'Chatruc 4840', 'VIP'),
('666', 'Luis', 'Blanco', '20-2322356-10', 'San Salvador 23', 'VIP');

 
 
 
 


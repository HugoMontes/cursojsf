/********** EDUCOMSER *************/

/*CREACIÓN DE LA BASE DE DATOS 'SISPEDIDOS' */

drop database if exists SISPEDIDOS;

create database SISPEDIDOS;

CREATE SEQUENCE id_users_seq;
CREATE SEQUENCE id_producto_seq;
CREATE SEQUENCE id_cliente_seq;


CREATE TABLE USERS(
ID int NOT NULL PRIMARY KEY  DEFAULT NEXTVAL('id_users_seq'),
NAME char(100) NOT NULL ,
EMAIL char(100) NOT NULL,
PASSWORD char(100) NOT NULL,
CREATED_AT TIMESTAMP NULL,
UPDATED_AT TIMESTAMP NULL);


CREATE TABLE PRODUCTOS (
ID INT NOT NULL PRIMARY KEY DEFAULT NEXTVAL('id_producto_seq'),
DESCRIPCION VARCHAR(100),
PRECIO NUMERIC,
FECHA_GARANTIA DATE,
CREATED_AT TIMESTAMP NULL,
UPDATED_AT TIMESTAMP NULL);

CREATE TABLE CLIENTES (
ID INT NOT NULL PRIMARY KEY DEFAULT NEXTVAL('id_cliente_seq'),
CI VARCHAR(20) NOT NULL,
NOMBRE VARCHAR(50) NOT NULL,
APELLIDO VARCHAR(50) NOT NULL,
DIRECCION VARCHAR(100),
ID_PRODUCTO INT NOT NULL,
CREATED_AT TIMESTAMP NULL,
UPDATED_AT TIMESTAMP NULL);

ALTER TABLE CLIENTES
ADD CONSTRAINT FK_CLIENTES_ID_ROL FOREIGN KEY(ID_PRODUCTO)
REFERENCES PRODUCTOS (ID) on delete restrict on update restrict;


/*INSERCIÓN BASE DE DATOS*/

INSERT INTO USERS (NAME, EMAIL, PASSWORD, CREATED_AT, UPDATED_AT) VALUES('juan', 'juan@gmail.com', md5('juan'), now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO USERS (NAME, EMAIL, PASSWORD, CREATED_AT, UPDATED_AT) VALUES('ana', 'ana@gmail.com', md5('ana'), now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO USERS (NAME, EMAIL, PASSWORD, CREATED_AT, UPDATED_AT) VALUES('pedro', 'pedro@gmail.com', md5('pedro'), now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO USERS (NAME, EMAIL, PASSWORD, CREATED_AT, UPDATED_AT) VALUES('marcos', 'marcos@gmail.com', md5('marcos'), now() at time zone 'BOT', now() at time zone 'BOT');

INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('Teclado','12.50','03/02/2015', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('Mouse','7.50','22/05/2016', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('Monitor','230','12/08/2015', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('WebCam','20.35','15/06/2015', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('Cobertor','8.90','09/12/2016', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('Disco Duro','45.50','02/02/2016', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('Parlantes','60','13/03/2015', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO productos (DESCRIPCION, PRECIO, FECHA_GARANTIA, CREATED_AT, UPDATED_AT) VALUES ('Microfono','37','23/07/2016', now() at time zone 'BOT', now() at time zone 'BOT');

INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('5785458', 'Juan', 'Perez', 'Miraflores nro 123', 2, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('9658545', 'Marcos', 'Velez', 'Centro Nro 456', 5, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('3256895', 'Federico', 'Robles', 'Las Rocas nro 458', 1, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('4852125', 'Mario', 'Ramirez', 'Las Lomas nro 695', 3, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('6568874', 'Jorge ', 'Olmos', 'Av America nro 699', 5, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('7158509', 'Ana', 'Torrez', 'Los Rosales nro 89', 6, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('5458520', 'Laura', 'Casas', 'Av Central nro 321', 1, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO clientes (CI, NOMBRE, APELLIDO, DIRECCION, ID_PRODUCTO, CREATED_AT, UPDATED_AT) VALUES ('6993636', 'Juana', 'Navia', 'Zona Pacifico nro 528', 5, now() at time zone 'BOT', now() at time zone 'BOT');

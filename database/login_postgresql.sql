/********** EDUCOMSER *************/

/*CREACIÓN DE LA BASE DE DATOS 'SISLOGIN' */

drop database if exists SISLOGIN;

create database SISLOGIN;

CREATE SEQUENCE id_users_seq;
CREATE SEQUENCE id_rol_seq;

CREATE TABLE ROL(
ID int NOT NULL PRIMARY KEY DEFAULT NEXTVAL('id_rol_seq'),
NOMBRE_ROL char(100) NOT NULL,
CREATED_AT timestamp  NULL,
UPDATED_AT timestamp NULL);

CREATE TABLE USERS(
ID int NOT NULL PRIMARY KEY  DEFAULT NEXTVAL('id_users_seq'),
NAME char(100) NOT NULL ,
EMAIL char(100) NOT NULL,
PASSWORD char(100) NOT NULL,
ID_ROL int NOT NULL,
CREATED_AT timestamp NULL,
UPDATED_AT timestamp NULL);

ALTER TABLE USERS
ADD CONSTRAINT FK_USERS_ID_ROL FOREIGN KEY(ID_ROL)
REFERENCES ROL (ID) on delete restrict on update restrict;


/*INSERCIÓN BASE DE DATOS*/

INSERT INTO ROL (NOMBRE_ROL, CREATED_AT, UPDATED_AT) values ('ADMINISTRADOR', now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO ROL (NOMBRE_ROL, CREATED_AT, UPDATED_AT) values ('MIEMBRO', now() at time zone 'BOT', now() at time zone 'BOT');

INSERT INTO USERS (NAME, EMAIL, PASSWORD, ID_ROL, CREATED_AT, UPDATED_AT) VALUES('juan', 'juan@gmail.com', md5('juan'), 1, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO USERS (NAME, EMAIL, PASSWORD, ID_ROL, CREATED_AT, UPDATED_AT) VALUES('ana', 'ana@gmail.com', md5('ana'), 1, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO USERS (NAME, EMAIL, PASSWORD, ID_ROL, CREATED_AT, UPDATED_AT) VALUES('pedro', 'pedro@gmail.com', md5('pedro'), 2, now() at time zone 'BOT', now() at time zone 'BOT');
INSERT INTO USERS (NAME, EMAIL, PASSWORD, ID_ROL, CREATED_AT, UPDATED_AT) VALUES('marcos', 'marcos@gmail.com', md5('marcos'), 2, now() at time zone 'BOT', now() at time zone 'BOT');

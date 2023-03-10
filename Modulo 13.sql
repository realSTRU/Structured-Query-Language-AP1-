use db1
/*Modulo 13 problema 1 */

/*Un instituto de ense?anza almacena los datos de sus estudiantes en una tabla llamada "alumnos".*/
/*1- Elimine la tabla "alumnos" si existe:*/
 if object_id('alumnos') is not null
  drop table alumnos;
/*2- Cree la tabla con la siguiente estructura:*/
create table alumnos(
  legajo int identity,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30)
 );
/*3- Ingrese los siguientes registros y mu?strelos para ver la secuencia de c?digos:*/
insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');

/*4- Elimine todos los registros con "delete".*/

delete from alumnos

/*5- Ingrese los siguientes registros y selecci?nelos para ver c?mo SQL Server gener? los c?digos:*/
insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;

 /*6- Elimine todos los registros con "truncate table".*/
 truncate table alumnos

 /*7- Ingrese los siguientes registros y muestre todos los registros para ver que SQL Server reinici? 
la secuencia del campo "identity":*/
insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;


 /*modulo 13 problema 2*/
 /*Un comercio que vende art?culos de computaci?n registra los datos de sus art?culos en una tabla con 
ese nombre.*/
 /*1- Elimine "articulos", si existe:*/
 if object_id('articulos') is not null
  drop table articulos;
/*2- Cree la tabla, con la siguiente estructura:*/
create table articulos(
  codigo integer identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio float
 );

 /*3- Ingrese algunos registros:*/
 insert into articulos (nombre, descripcion, precio)
  values ('impresora','Epson Stylus C45',400.80);
 insert into articulos (nombre, descripcion, precio)
  values ('impresora','Epson Stylus C85',500);

  /*4- Elimine todos los registros con "truncate table".*/
  truncate table articulos

  /*5- Ingrese algunos registros y mu?strelos para ver que la secuencia de c?digos se reinicia:*/

 insert into articulos (nombre, descripcion, precio)
  values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio)
  values ('teclado','ingles Biswal',100);
 insert into articulos (nombre, descripcion, precio)
  values ('teclado','espa?ol Biswal',90);
 select * from articulos;

 /*6- Elimine todos los registros con "delete".*/

 delete from articulos 

 /*7- Ingrese algunos registros y mu?strelos para ver que la secuencia de c?digos continua:
*/

insert into articulos (nombre, descripcion, precio)
  values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio)
  values ('teclado','ingles Biswal',100);
 insert into articulos (nombre, descripcion, precio)
  values ('teclado','espa?ol Biswal',90);
 select * from articulos;


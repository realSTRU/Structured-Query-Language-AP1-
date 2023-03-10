use db1
/*Modulo 6 problema 1*/
/*Un comercio que vende art?culos de computaci?n registra los datos de sus art?culos en una tabla con 
ese nombre.*/
/*1- Elimine "articulos", si existe:*/
 if object_id('articulos') is not null
  drop table articulos;
/*2- Cree la tabla, con la siguiente estructura:*/
create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 /*3- Vea la estructura de la tabla */

 exec sp_columns articulos

 /*4- Ingrese algunos registros:*/
  insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','espa?ol Biswal',90,50);

  /*5- Seleccione los datos de las impresoras (2 registros)*/
  select * from articulos where nombre = 'impresora'

  /*6- Seleccione los art?culos cuyo precio sea mayor o igual a 400 (3 registros)*/

  select *from articulos where precio >= 400

  /*7- Seleccione el c?digo y nombre de los art?culos cuya cantidad sea menor a 30 (2 registros)*/

  select codigo, nombre from articulos where cantidad < 30

  /*8- Selecciones el nombre y descripci?n de los art?culos que NO cuesten $100 (4 registros)*/

  select nombre, descripcion from articulos where precio != 100


  /*Modulo 6 problema 2*/
  /*Un video club que alquila pel?culas en video almacena la informaci?n de sus pel?culas en alquiler en 
una tabla denominada "peliculas".*/
/*1-elimine la tabla si existe*/
if OBJECT_ID('peliculas')is not null
	drop table peliculas
/*2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:*/
 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 /*3- Ingrese los siguientes registros:*/
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,4);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,1);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',80,2);

  /*4- Seleccione las pel?culas cuya duraci?n no supere los 90 minutos (2 registros)*/
  select * from peliculas where duracion <= 90

  /*5- Seleccione el t?tulo de todas las pel?culas en las que el actor NO sea "Tom Cruise" (2 
registros)*/
select titulo from peliculas where actor != 'Tom Cruise'


/*6- Muestre todos los campos, excepto "duracion", de todas las pel?culas de las que haya m?s de 2 
copias (2 registros)*/

select titulo,actor,cantidad from peliculas where cantidad  > 2

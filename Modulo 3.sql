use db1

/*Modulo 3 problema 1*/
/*Un videoclub que alquila películas en video almacena la información de sus películas en una tabla 
llamada "peliculas"; para cada película necesita los siguientes datos:
 -nombre, cadena de caracteres de 20 de longitud,
 -actor, cadena de caracteres de 20 de longitud,
 -duración, valor numérico entero.
 -cantidad de copias: valor entero.*/

 /*1- Elimine la tabla, si existe*/

 if OBJECT_ID('Peliculas')is not null
	drop table Peliculas;

/*2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:*/
create table peliculas(
 nombre varchar(20),
 actor varchar(20),
 duracion integer,
 cantidad integer
 );

 /*3- Vea la estructura de la tabla:*/

 exec sp_columns peliculas

 /*4- Ingrese los siguientes registros:*/
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',128,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

  /*5- Muestre los datos de la tabla*/

  select * from peliculas

/*Modulo 3 problema 2*/
/*na empresa almacena los datos de sus empleados en una tabla "empleados" que guarda los siguientes 
datos: nombre, documento, sexo, domicilio, sueldobasico.*/
/*1- Elimine la tabla, si existe:*/

if OBJECT_ID('empleados')is not null
	drop table empleados
/*2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:*/

create table empleados(
  nombre varchar(20),
  documento varchar(8),
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
);

/*3- Vea la estructura de la tabla*/

exec sp_columns empleados

/*4- Ingrese algunos registros:*/
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Perez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','24555666','f','Colon 134',650);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Bartolome Barrios','27888999','m','Urquiza 479',800);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Cesar', '40233','m','nagua',78.90)

/*5-Monstrando todos los registros*/
select * from empleados




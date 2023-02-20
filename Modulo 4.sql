use db1

/*Modulo 4 problema 1*/
/*Un videoclub que alquila películas en video almacena la información de sus películas en alquiler en 
una tabla llamada "peliculas".*/

/*1- Elimine la tabla, si existe*/
if OBJECT_ID('peliculas')is not null
	drop table peliculas

/*2- Cree la tabla:*/
 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 /*3- Vea la estructura de la tabla */
 exec sp_columns peliculas
 /*4- Ingrese alos siguientes registros:*/
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

  /*Realice un "select" mostrando solamente el título y actor de todas las películas*/
  select titulo, actor from peliculas

/*Muestre el título y duración de todas las peliculas*/

select titulo, duracion from peliculas

/*7- Muestre el título y la cantidad de copias*/

select titulo, cantidad from peliculas

/*Modulo problema 2*/
/*Una empresa almacena los datos de sus empleados en una tabla llamada "empleados".*/
/*1- Elimine la tabla, si existe*/
if OBJECT_ID('empleados')is not null
	drop table empleados

/*2- Cree la tabla:*/

 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

 /*3- Vea la estructura de la tabla:*/

 exec sp_columns empleados

 /*4- Ingrese algunos registros:*/
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);
 /*5- Muestre todos los datos de los empleados*/
select * from empleados

/*6- Muestre el nombre, documento y domicilio de los empleados*/

select nombre, documento, domicilio from empleados


/*7- Realice un "select" mostrando el documento, sexo y sueldo básico de todos los empleados*/

select documento, sexo, sueldobasico from empleados




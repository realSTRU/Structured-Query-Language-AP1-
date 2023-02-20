Create database db1
use db1


/*Modulo 1 Problema 1*/

/*1- Elimine la tabla "agenda" si existe:*/
 if object_id('agenda') is not null
  drop table agenda;


/*2- Intente crear una tabla llamada "/agenda":*/

create table /agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
  );
/*aparece un mensaje de error porque usamos un caracter inválido ("/") para el nombre.*/

/*3- Cree una tabla llamada "agenda", debe tener los siguientes campos: apellido, varchar(30); nombre, 
varchar(20); domicilio, varchar (30) y telefono, varchar(11):*/
/*Esta es la forma correcta*/

create table agenda(
Apellido varchar(30),
Nombre varchar(20),
Domicilio varchar(30),
Telefono varchar(11)
);

/*4- Intente crearla nuevamente. Aparece mensaje de error.*/

create table agenda(
Apellido varchar(30),
Nombre varchar(20),
Domicilio varchar(30),
Telefono varchar(11)
);

/*Al crearla nuevamente aparecera el error 'There is already an object named 'agenda' in the database.'*/
/*5- Visualice las tablas existentes (exec sp_tables @table_owner='dbo').*/
exec sp_tables @table_owner='dbo'

/*6- Visualice la estructura de la tabla "agenda" (sp_columns).*/
exec sp_columns agenda;


/*7- Elimine la tabla.*/

drop table agenda

/*8-Intentando eliminarla nuevamente*/

drop table agenda

/*Aparece el error:'Cannot drop the table 'agenda', because it does not exist or you do not have permission.'*/

/*Modulo 1 problema 2*/
/*Necesita almacenar información referente a los libros de su biblioteca personal. Los datos que 
guardará serán: título del libro, nombre del autor y nombre de la editorial.*/
/*1- Elimine la tabla "libros", si existe*/
if object_id('libros') is not null
  drop table libros;
/*2- Verifique que la tabla "libros" no existe en la base de datos activa*/
exec sp_tables @table_owner='dbo'
/*No hay tablas en la base de datos*/

/*3- Cree una tabla llamada "libros". Debe definirse con los siguientes campos: titulo, varchar(20); 
autor, varchar(30) y editorial, varchar(15).*/

create table Libros(
Titulo varchar(20),
Autor varchar(30),
Editorial varchar(15)
);

/*4-Intentando crearla nuevamente*/
create table Libros(
Titulo varchar(20),
Autor varchar(30),
Editorial varchar(15)
);
/*Aparece el error: There is already an object named 'Libros' in the database.*/

/*5- Visualice las tablas existentes.*/
exec sp_tables @table_owner='dbo'
/*Existencia de la tabla de libros*/
/*6- Visualice la estructura de la tabla "libros".*/
exec sp_columns Libros
/*7- Elimine la tabla.*/
drop table Libros
/*Intentando eliminarla nuevamente*/

drop table Libros						
/*Aparece el error: Cannot drop the table 'Libros', because it does not exist or you do not have permission.*/






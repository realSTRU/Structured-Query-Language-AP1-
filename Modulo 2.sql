use db1


/*Modulo 2 problema 1*/
/*1- Elimine la tabla "agenda", si existe*/
if object_id('agenda') is not null
  drop table agenda;

/*2- Cree una tabla llamada "agenda". Debe tener los siguientes campos: apellido (cadena de 30), 
nombre (cadena de 20), domicilio (cadena de 30) y telefono (cadena de 11):*/
create table agenda(
Apellido varchar(30),
Nombre varchar(20),
Domicilio varchar(30),
Telefono varchar(11)

);
/*3- Visualice las tablas existentes para verificar la creación de "agenda" */
exec sp_tables @table_owner='dbo'
/*4- Visualice la estructura de la tabla "agenda" (sp_columns).*/
exec sp_columns agenda
/*5- Ingrese los siguientes registros*/
 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

/*6- Seleccione todos los registros de la tabla*/
select * from agenda

/*7- Elimine la tabla "agenda":*/

drop table agenda

/*8-Intentando eliminar nuevamente*/

drop table agenda

/*Aparece el error: Cannot drop the table 'agenda', because it does not exist or you do not have permission. */

/*Modulo 2 problema 2*/
/*Trabaje con la tabla "libros" que almacena los datos de los libros de su propia biblioteca.*/
/*1- Elimine la tabla "libros", si existe:*/

if OBJECT_ID('libros')is not null
	drop table libros

/*2- Cree una tabla llamada "libros". Debe definirse con los siguientes campos: titulo (cadena de 20), 
autor (cadena de 30) y editorial (cadena de 15).
*/

create table libros(

Titulo varchar(20),
Autor varchar(30),
Editorial varchar(15)

);

/*3- Visualice las tablas existentes*/
exec sp_tables @table_owner='dbo'

/*4- Visualice la estructura de la tabla "libros" */
exec sp_columns libros

/*5- Ingrese los siguientes registros:*/

 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Planeta');
 insert into libros (titulo,autor,editorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros (titulo,autor,editorial)
  values ('Aprenda PHP','Mario Molina','Emece');

/*6- Muestre todos los registros (select).*/

select * from libros



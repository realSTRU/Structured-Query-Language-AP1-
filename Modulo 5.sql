use db1

/*Modulo 5 problema 1*/
/*Trabaje con la tabla "agenda" en la que registra los datos de sus amigos.*/
/*1- Elimine "agenda", si existe*/
if object_id('agenda') is not null
  drop table agenda;
/*2- Cree la tabla, con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), 
domicilio (cadena de 30) y telefono (cadena de 11).*/

create table agenda(
Apellido varchar(30),
Nombre varchar(20),
Domicilio varchar(30),
Telefono varchar (11)


);


/*3- Visualice la estructura de la tabla "agenda".*/

exec sp_columns agenda

/*4- Ingrese los siguientes registros:
 Acosta, Ana, Colon 123, 4234567;
 Bustamante, Betina, Avellaneda 135, 4458787;
 Lopez, Hector, Salta 545, 4887788; 
 Lopez, Luis, Urquiza 333, 4545454;
 Lopez, Marisa, Urquiza 333, 4545454.*/

 insert into agenda (Apellido, Nombre, Domicilio, Telefono) values('Acosta','Ana','Colon 123','4234567');
 insert into agenda (Apellido, Nombre, Domicilio, Telefono) values('Bustamante','Bestina','Avellaneda 135','4458787');
 insert into agenda (Apellido, Nombre, Domicilio, Telefono) values('Lopez','Hector','Salta 545','4887788');
 insert into agenda (Apellido, Nombre, Domicilio, Telefono) values('Lopez','Luis','Urquiza 333','4545454');
 insert into agenda (Apellido, Nombre, Domicilio, Telefono) values('Lopez','Marisa','Urquiza 333','4545454');

 /*5- Seleccione todos los registros de la tabla*/

 select *from agenda

/*6- Seleccione el registro cuyo nombre sea "Marisa" (1 registro)*/

select * from agenda where Nombre = 'Marisa'

/*7- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros)*/
select Nombre, Domicilio from agenda where Apellido = 'Lopez'

/*8- Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)*/

select Nombre from agenda where Telefono = '4545454'


/*Modulo 5 problema 2*/
/*Trabaje con la tabla "libros" de una librería que guarda información referente a sus libros 
disponibles para la venta.*/
/*
1- Elimine la tabla si existe.*/
if OBJECT_ID('libros')is not null
	drop table libros
/*2- Cree la tabla "libros". Debe tener la siguiente estructura:*/

create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
  );

/*3- Visualice la estructura de la tabla "libros".*/

exec sp_columns libros

/*4- Ingrese los siguientes registros:
 El aleph,Borges,Emece;
 Martin Fierro,Jose Hernandez,Emece;
 Martin Fierro,Jose Hernandez,Planeta;
 Aprenda PHP,Mario Molina,Siglo XXI;*/

insert into libros (titulo, autor, editorial) values ('El aleph','Borges','Emece');
insert into libros (titulo, autor, editorial) values ('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo, autor, editorial) values ('Martin Fierro','Jose Hernandez','Planeta');
insert into libros (titulo, autor, editorial) values ('PHP','Mario Molina','Siglo XXI');


/*5- Seleccione los registros cuyo autor sea "Borges" (1 registro)*/

select * from libros where autor = 'Borges'

/*6- Seleccione los títulos de los libros cuya editorial sea "Emece" (2 registros)*/

select titulo from libros where editorial = 'Emece'

/*7- Seleccione los nombres de las editoriales de los libros cuyo titulo sea "Martin Fierro" (2 
registros)*/

select editorial from libros where titulo = 'Martin Fierro'


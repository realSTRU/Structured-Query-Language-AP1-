use db1 
/*Modulo 12 problema 1*/
/*Una farmacia guarda informaci�n referente a sus medicamentos en una tabla llamada "medicamentos".*/
/*1- Elimine la tabla,si existe:*/
 if object_id('medicamentos') is not null
  drop table medicamentos;
/*2- Cree la tabla con un campo "codigo" que genere valores secuenciales autom�ticamente comenzando en 
10 e increment�ndose en 1*/
create table medicamentos(
  codigo integer identity(10,1),
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 /*3- Ingrese los siguientes registros:*/
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 /*4- Verifique que SQL Server gener� valores para el campo "c�digo" de modo autom�tico:*/
 select *from medicamentos

 /*5- Intente ingresar un registro con un valor para el campo "codigo".*/
  insert into medicamentos (codigo, nombre, laboratorio,precio,cantidad)
  values(1, 'Amoxidal 500','Bayer',15.60,100);
/*6- Setee la opci�n "identity_insert" en "on"*/

set identity_insert medicamentos on;
set identity_insert medicamentos off;
/*7- Ingrese un nuevo registro sin valor para el campo "codigo" (no lo permite):*/
insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

/*8- Ingrese un nuevo registro con valor para el campo "codigo" repetido.*/
  insert into medicamentos (codigo, nombre, laboratorio,precio,cantidad)
  values(11, 'Amoxidal 500','Bayer',15.60,100);

  /*9- Use la funci�n "ident_seed()" para averiguar el valor de inicio del campo "identity" de la tabla 
"medicamentos"*/

 select ident_seed('medicamentos');


 select * from medicamentos

 /*10- Emplee la funci�n "ident_incr()" para saber cu�l es el valor de incremento del campo "identity" 
de "medicamentos" */
 select ident_incr('medicamentos');


 /*modulo 12 problema 2*/

 /*Un videoclub almacena informaci�n sobre sus pel�culas en una tabla llamada "peliculas".*/
 /*1- Elimine la tabla si existe:*/
  if object_id('peliculas') is not null
  drop table peliculas;
  /*2- Cr�ela definiendo un campo "codigo" autoincrementable que comience en 50 y se incremente en 3:*/
 create table peliculas(
  codigo int identity (50,3),
  titulo varchar(40),
  actor varchar(20),
  duracion int
 );
 /*3- Ingrese los siguientes registros:*/
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);

  /*4- Seleccione todos los registros y verifique la carga autom�tica de los c�digos:*/
  select *from peliculas;

  /*5- Setee la opci�n "identity_insert" en "on"*/

  set identity_insert peliculas on;

  /*6- Ingrese un registro con valor de c�digo menor a 50.*/
  insert into peliculas (codigo,titulo,actor,duracion)
  values(8,'Harry Potter y la piedra filosofal','Daniel R.',180);

  /*7- Ingrese un registro con valor de c�digo mayor al �ltimo generado.*/
  insert into peliculas (codigo,titulo,actor,duracion)
  values(59,'Harry Potter y la piedra filosofal','Daniel R.',180);

  /*8- Averigue el valor de inicio del campo "identity" de la tabla "peliculas"*/
  select IDENT_SEED('peliculas')

  /*9- Averigue el valor de incremento del campo "identity" de "peliculas".*/
  select IDENT_INCR('peliculas')

  /*10- Intente ingresar un registro sin valor para el campo c�digo.*/

  insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);

  /*
11- Desactive la opci�n se inserci�n para el campo de identidad*/
 set identity_insert peliculas off;
 /*12- Ingrese un nuevo registro y muestre todos los registros para ver c�mo SQL Server sigui� la 
secuencia tomando el �ltimo valor del campo como referencia.
*/

insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);

  select*from peliculas







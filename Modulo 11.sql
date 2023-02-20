use db1

/*Modulo 11 problema 1*/
/*Una farmacia guarda información referente a sus medicamentos en una tabla llamada "medicamentos".*/
/*1- Elimine la tabla,si existe:*/
 if object_id('medicamentos') is not null
  drop table medicamentos;
/*2- Cree la tabla con un campo "codigo" que genere valores secuenciales automáticamente:*/
create table medicamentos(
  codigo int identity,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );
/*3- Visualice la estructura de la tabla "medicamentos":*/
exec sp_columns medicamentos
/*4- Ingrese los siguientes registros:*/
insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

/*5- Verifique que SQL Server generó valores para el campo "código" de modo automático:*/
select * from medicamentos;
/*6- Intente ingresar un registro con un valor para el campo "codigo"*/
insert into medicamentos (codigo, laboratorio,precio,cantidad)
  values(4,'Buscapina','Roche',4.10,200);
  /*7- Intente actualizar un valor de código (aparece un mensaje de error)*/
  update medicamentos set codigo =1 where nombre = 'Sertal'
  /*8- Elimine el registro con codigo "3" (1 registro eliminado)*/
  delete from medicamentos where codigo = 3
  /*9- Ingrese un nuevo registro*/
   insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);
  /*10- Seleccione todos los registros para ver qué valor guardó SQL Server en el campo código:*/
   select * from medicamentos;

   /*Modulo 11 problema 2*/

   /*Un videoclub almacena información sobre sus películas en una tabla llamada "peliculas".*/
   /*1- Elimine la tabla si existe*/
    if object_id('peliculas') is not null
  drop table peliculas;
  /*2- Créela definiendo un campo "codigo" autoincrementable y como clave primaria*/
  create table peliculas(
  codigo int identity,
  titulo varchar(40),
  actor varchar(20),
  duracion int,
  primary key(codigo)
 );

 /*3- Ejecute el procedimiento almacenado para visualizar la estructura de la tabla:*/
 exec sp_columns peliculas;

 /*4- Ingrese los siguientes registros:*/
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('La vida es bella','zzz',220);

  /*5- Seleccione todos los registros y verifique la carga automática de los códigos:
 select * from peliculas;*/

 select * from peliculas

 /*6- Intente actualizar el codigo de una película (aparece un mensaje de error)*/
 update peliculas set codigo = 10

 /*7- Elimine la película "La vida es bella".*/
 delete from peliculas where titulo = 'La vida es bella'

 /*8- Ingrese un nuevo registro.*/
 insert into peliculas (titulo,actor,duracion)
  values('La vida es bella','zzz',220);

  /*9- Visualice los registros para ver el valor almacenado en codigo (valor 6):*/
  select * from peliculas;

 
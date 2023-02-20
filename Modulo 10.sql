use db1

/*Modulo 10 problema 1*/
/*Trabaje con la tabla "libros" de una librería.*/
/*1- Elimine la tabla si existe:*/
if object_id('libros') is not null
  drop table libros;
 /*2- Créela con los siguientes campos, estableciendo como clave primaria el campo "codigo":*/
  create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );
 /*3- Ingrese los siguientes registros:*/
 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

  /*4- Ingrese un registro con código repetido (aparece un mensaje de error)*/
  insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');
  /*Aparece el error: Violation of PRIMARY KEY constraint 'PK__libros__40F9A20788B0A11C'.
   Cannot insert duplicate key in object 'dbo.libros'. The duplicate key value is (3).*/

   /*5- Intente ingresar el valor "null" en el campo "codigo"*/
     insert into libros (codigo,titulo,autor,editorial)
  values (null,'Aprenda PHP','Mario Molina','Nuevo Siglo');
  /*Aparece el error:Cannot insert the value NULL into column 'codigo', table 'master.dbo.libros'; column does not allow nulls. INSERT fails.*/

  /*6- Intente actualizar el código del libro "Martin Fierro" a "1" (mensaje de error)*/
  update libros set codigo = 1 where titulo = 'Martin Fierro'
  /*Aparece el error: Violation of PRIMARY KEY constraint 'PK__libros__40F9A20788B0A11C'. Cannot insert duplicate key in object 'dbo.libros'. The duplicate key value is (1).*/

  /*Modulo 10 problema 2*/
  /*Un instituto de enseñanza almacena los datos de sus estudiantes en una tabla llamada "alumnos".*/
  /*1- Elimine la tabla "alumnos" si existe:*/
   if object_id('alumnos') is not null
  drop table alumnos;
  /*2- Cree la tabla con la siguiente estructura intentando establecer 2 campos como clave primaria, el 
campo "documento" y "legajo" (no lo permite):*/
 create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento),
  primary key(legajo)
 );

 /*Forma correcta*/
  create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento),
 );

 /*4- Verifique que el campo "documento" no admite valores nulos:*/
 exec sp_columns alumnos

 /*5- Ingrese los siguientes registros:*/
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A233','22345345','Perez Mariana','Colon 234');
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A567','23545345','Morales Marcos','Avellaneda 348');

  /*6- Intente ingresar un alumno con número de documento existente (no lo permite)*/
  insert into alumnos (legajo,documento,nombre,domicilio)
  values('A567','23545345','Marcos','Avellaneda 348');

  /*7- Intente ingresar un alumno con documento nulo (no lo permite)*/
  insert into alumnos (legajo,documento,nombre,domicilio)
  values('A567',null,'Marcos','Avellaneda 348');


  
  

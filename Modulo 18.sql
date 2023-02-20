use db1 


/*Modulo 18 problema 1*/
/*Un comercio que tiene un stand en una feria registra en una tabla llamada "visitantes" algunos datos 
de las personas que visitan o compran en su stand para luego enviarle publicidad de sus productos.*/
/*1- Elimine la tabla "visitantes", si existe:*/
if object_id('visitantes') is not null
  drop table visitantes;
/*2- Cree la tabla con la siguiente estructura:*/

create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 /*4- Vea la información de las columnas "COLUMN_DEF" y "IS_NULLABLE":*/
 exec sp_columns visitantes;

 /*5- Ingrese algunos registros sin especificar valores para algunos campos para ver cómo opera la 
cláusula "default":*/
insert into visitantes (nombre, domicilio, montocompra)
  values ('Susana Molina','Colon 123',59.80);
 insert into visitantes (nombre, edad, ciudad, mail)
  values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
 select * from visitantes;

 /*6- Use la palabra "default" para ingresar valores en un insert.*/

  insert into visitantes values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

 /* 7- Ingrese un registro con "default values".*/
  insert into visitantes default values;

  /*Modulo 18 problema 2*/
  /*Una pequeña biblioteca de barrio registra los préstamos de sus libros en una tabla llamada 
"prestamos". En ella almacena la siguiente información: título del libro, documento de identidad del 
socio a quien se le presta el libro, fecha de préstamo, fecha en que tiene que devolver el libro y 
si el libro ha sido o no devuelto.*/

/*1- Elimine la tabla "prestamos" si existe:*/
if object_id('prestamos') is not null
  drop table prestamos;
/*2- Cree la tabla:*/

create table prestamos(
  titulo varchar(40) not null,
  documento char(8) not null,
  fechaprestamo datetime not null,
  fechadevolucion datetime,
  devuelto char(1) default 'n'
 );

 /*3- Ingrese algunos registros omitiendo el valor para los campos que lo admiten:*/
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
 insert into prestamos (titulo,documento,fechaprestamo)
  values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('El aleph','22543987','2006-12-16','2006-08-19');
 insert into prestamos (titulo,documento,fechaprestamo,devuelto)
  values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

  /*4- Seleccione todos los registros:*/
   select * from prestamos;

   /*5- Ingrese un registro colocando "default" en los campos que lo admiten y vea cómo se almacenó.*/
   exec sp_columns prestamos
   insert into prestamos (titulo,documento,fechaprestamo,devuelto)
  values ('Manual de geografia 5 grado','25555666','2006-12-18',default);

  /*6- Intente ingresar un registro con "default values" y analice el mensaje de error (no se puede)*/
   insert into prestamos default values;
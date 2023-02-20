use db1


/*Modulo 15 problema 1*/

/*Un banco tiene registrados las cuentas corrientes de sus clientes en una tabla llamada "cuentas".
La tabla contiene estos datos: Numero de cuenta, Nombre, Documento, Saldo*/

/*1- Elimine la tabla "cuentas" si existe:*/
if object_id('cuentas') is not null
  drop table cuentas;
/*2- Cree la tabla eligiendo el tipo de dato adecuado para almacenar los datos descriptos arriba:

 - Número de cuenta: entero, no nulo, no puede haber valores repetidos, clave primaria;
 - Documento del propietario de la cuenta: cadena de caracteres de 8 de longitud (siempre 8), no nulo;
 - Nombre del propietario de la cuenta: cadena de caracteres de 30 de longitud,
 - Saldo de la cuenta: valores altos con decimales.*/

 create table cuentas(
 Numero_Cuenta int not null primary key,
 Documento varchar(8) not null,
 Nombre varchar(30),
 Saldo float
 
 
 );

 /*3- Ingrese los siguientes registros:
Note que hay dos cuentas, con distinto número de cuenta, de la misma persona.*/
 insert into cuentas(Numero_Cuenta,Documento,Nombre,Saldo)
  values('1234','25666777','Pedro Perez',500000.60);
 insert into cuentas(Numero_Cuenta,Documento,Nombre,Saldo)
  values('2234','27888999','Juan Lopez',-250000);
 insert into cuentas(Numero_Cuenta,Documento,Nombre,Saldo)
  values('3344','27888999','Juan Lopez',4000.50);
 insert into cuentas(Numero_Cuenta,Documento,Nombre,Saldo)
  values('3346','32111222','Susana Molina',1000);

/*4- Seleccione todos los registros cuyo saldo sea mayor a "4000" (2 registros)*/
select * from cuentas where saldo > 4000

/*5- Muestre el número de cuenta y saldo de todas las cuentas cuyo propietario sea "Juan Lopez" (2 
registros)*/

select Numero_Cuenta, Saldo from cuentas where Nombre = 'Juan Lopez'

/*6- Muestre las cuentas con saldo negativo (1 registro)*/

select * from cuentas where Saldo < 0

/*7- Muestre todas las cuentas cuyo número es igual o mayor a "3000" (2 registros):*/
select * from cuentas where Numero_Cuenta>=3000;

/*Modulo 15 problema 2*/
/*Una empresa almacena los datos de sus empleados en una tabla "empleados" que guarda los siguientes 
datos: nombre, documento, sexo, domicilio, sueldobasico.*/
/*1- Elimine la tabla, si existe:*/
if object_id('empleados') is not null drop table empleados;
/*2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
*/
 create table empleados(
  nombre varchar(30),
  documento char(8),
  sexo char(1),
  domicilio varchar(30),
  sueldobasico decimal(7,2),--máximo estimado 99999.99
  cantidadhijos tinyint--no superará los 255
 );

 /*3- Ingrese algunos registros:*/
  insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Ana Acosta','24555666','f','Colon 134',850,0);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

  /*4- Ingrese un valor de "sueldobasico" con más decimales que los definidos (redondea los decimales al 
valor más cercano 800.89):
*/

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Susana Molina','29000555','f','Salta 876',800.888,3);

/*5- Intente ingresar un sueldo que supere los 7 dígitos (no lo permite)*/

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Susana Molina','29000555','f','Salta 876',8009999.89988,3);

/*6- Muestre todos los empleados cuyo sueldo no supere los 900 pesos*/
select * from empleados where sueldobasico <= 900

/*7- Seleccione los nombres de los empleados que tengan hijos (3 registros):*/
select * from empleados where cantidadhijos > 0  
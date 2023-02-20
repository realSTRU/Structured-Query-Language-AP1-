use db1
/*Modulo 23 problema 1*/
/*Trabaje con la tabla llamada "medicamentos" de una farmacia.*/
/*1- Elimine la tabla, si existe:*/
 if object_id('medicamentos') is not null
  drop table medicamentos;

 /*2- Cree la tabla con la siguiente estructura:*/
  create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );
/*3- Ingrese algunos registros: */
 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250);
 /*4- Recupere los códigos y nombres de los medicamentos cuyo laboratorio sea 'Roche' y cuyo precio sea 
menor a 5 (1 registro cumple con ambas condiciones)*/
select codigo, nombre from medicamentos where laboratorio = 'Roche' and precio < 5 

/*5- Recupere los medicamentos cuyo laboratorio sea 'Roche' o cuyo precio sea menor a 5 (4 registros):
Note que el resultado es diferente al del punto 4, hemos cambiado el operador de la sentencia 
anterior.*/
 se/lect * from medicamentos where laboratorio='Roche' or precio<5;

/*6- Muestre todos los medicamentos cuyo laboratorio NO sea "Bayer" y cuya cantidad sea=100 (1 
registro)*/

select * from medicamentos where NOT laboratorio = 'Bayer' and cantidad = 100

/*7- Muestre todos los medicamentos cuyo laboratorio sea "Bayer" y cuya cantidad NO sea=100 (2 registros):
Analice estas 2 últimas sentencias. El operador "not" afecta a la condición a la cual antecede, no a 
las siguientes. Los resultados de los puntos 6 y 7 son diferentes.*/
 select * from medicamentos where laboratorio='Bayer' and not cantidad=100;

 /*8- Elimine todos los registros cuyo laboratorio sea igual a "Bayer" y su precio sea mayor a 10 (1 
registro eliminado)*/

delete from medicamentos where laboratorio = 'Bayer' and precio > 10

/*9- Cambie la cantidad por 200, a todos los medicamentos de "Roche" cuyo precio sea mayor a 5 (1 
registro afectado)
*/
update medicamentos set cantidad = 200 where laboratorio = 'Roche' and precio > 5
/*10- Borre los medicamentos cuyo laboratorio sea "Bayer" o cuyo precio sea menor a 3 (3 registros 
borrados)*/

delete from medicamentos where laboratorio = 'Bayer' or precio < 3

/*Modulo 23 problema 2*/

/*Trabajamos con la tabla "peliculas" de un video club que alquila películas en video.*/
/*1- Elimine la tabla, si existe;*/
 if object_id('peliculas') is not null
  drop table peliculas;
  /*2- Créela con la siguiente estructura:
 */
  create table peliculas(
  codigo int identity,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion tinyint,
  primary key (codigo)
  );
  /*3- Ingrese algunos registros:*/
   insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita','Richard Gere',120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas
  values('Un oso rojo','Julio Chavez',100);
 insert into peliculas
  values('Elsa y Fred','China Zorrilla',110);
  /*4- Recupere los registros cuyo actor sea "Tom Cruise" or "Richard Gere" (3 registros)*/
  select * from peliculas where actor ='Tom Cruise' or actor = 'Richard Gere'

  /*5- Recupere los registros cuyo actor sea "Tom Cruise" y duración menor a 100 (ninguno cumple ambas 
condiciones)
*/

select * from peliculas where actor = 'Tom Cruise' and duracion < 100

/*6- Cambie la duración a 200, de las películas cuyo actor sea "Daniel R." y cuya duración sea 180 (1 
registro afectado)*/

update peliculas set duracion = 200 where actor = 'Daniel R.' and duracion = 180 

/*
7- Borre todas las películas donde el actor NO sea "Tom Cruise" y cuya duración sea mayor o igual a 
100 (2 registros eliminados)*/

delete from peliculas where not actor = 'Tom Cruise' and duracion >= 100
select * from peliculas




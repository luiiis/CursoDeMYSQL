/*
-------------------------------------------------------------------------------------
MODELO RELACIONAL
-------------------------------------------------------------------------------------
cuatro tipos de mapeo
-uno a uno
-uno a munchos
-munchos a uno
-munchos a munchos
*/
/*base de datos que tenemos*/
show databases;
/*seleccionar base de datos*/
use mysql;
/*mostrar tablas de la base de datos*/
show full tables;
/*mostrar registros de una tabla*/
select*from user;
/*previlegios para el usuario root*/
show grants for 'root'@'localhost';

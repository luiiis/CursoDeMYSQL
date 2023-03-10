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
/*
-------------------------------------------------------------------------------------
crear usuarios y eliminarlos
-------------------------------------------------------------------------------------*/
/*crear usuario sin previlegios*/
create user juanito identified by 'Hola';
/*eliminar usuario*/
DROP USER juanito;

select*from user;

/*
-------------------------------------------------------------------------------------
OTORGAR PREVILEGIOS A LOS USUARIOS
-------------------------------------------------------------------------------------*/
ALL PRIVILEGES: como mencionamos previamente esto permite a un usuario de MYSQL accesder a todas las bases de
datos asignadas en el sistema.
CREATE: perimite crear nuevas tablas o base de datos.
DROP: permite eliminar tablas o base de datos;
DELETE: permite eliminar registros de tablas;
INSERT: permite insertar registros en tablas;
SELECT: permite leer registros en las tablas;
UPDATE: permite actualizar registros seleccionados en tablas.
GRANT OPTION: permite remove privilegios de usuarios;







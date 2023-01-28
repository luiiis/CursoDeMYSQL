/*
SQL->lenguaje estructura de consulta
DDL->lenguaje de deficion de datos ejemplo:create,drop
DML->Lenguaje de manipulacion de datos ejemplo:insert select

entidad->tablas
atributos->campos
registro->tuplas
cardinalidad->relaciones

*/
/**crear base de datos*/
create database prueba1;
-- para cambiar de contexto
use prueba1;
-- borrar base de datos
drop database prueba1;

/*
-------------------------------------------------------------------------------------------------------
crear tablas
-------------------------------------------------------------------------------------------------------
*/
create database prueba1;
use prueba1;
-- crear tabla
create table t_prueba(
id_prueba int auto_increment, -- se creea campo solo
nombre varchar(250),
peso float,
comentarios text,
fecha date,
primary key(id_prueba)
);
-- descripcion de tabla sql
describe t_prueba;
-- mostrar todas las tablas de mi base de datos
show tables;
/*
-------------------------------------------------------------------------------------------------------
INSERTAR REGISTROS EN LAS TABLAS
-------------------------------------------------------------------------------------------------------
*/
use prueba1;
insert into t_prueba (nombre,peso,comentarios,fecha)
values('lulu',55.5,'es un tipo super grosero','2018-03-11');

describe t_prueba;
/*
-------------------------------------------------------------------------------------------------------
ACTUALIZAR REGISTROS EN LAS TABLAS
-------------------------------------------------------------------------------------------------------
*/
update t_prueba set comentarios ='actualizacion de coemntario',fecha='2022-01-01' where id_prueba=1;

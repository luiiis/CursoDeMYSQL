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
/*
-------------------------------------------------------------------------------------------------------
ELIMINAR REGISTROS EN LAS TABLAS
-------------------------------------------------------------------------------------------------------
*/
delete from t_prueba where id_prueba=3;
/*
-------------------------------------------------------------------------------------------------------
ELIMINAR REGISTROS CON TRUNCATE limpia la tabla de todos los datos de la tabla
-------------------------------------------------------------------------------------------------------
*/
truncate table t_prueba;
/*
-------------------------------------------------------------------------------------------------------
USO DE ALIAS EN MYSQL
-------------------------------------------------------------------------------------------------------
*/
select t1.nombre  from prueba1.t_prueba as t1;
/*
-------------------------------------------------------------------------------------------------------
LLAVES FORANEAS EN MYSQL
-------------------------------------------------------------------------------------------------------
*/
CREATE TABLE t_domicilio(
id_domicilio int(11) NOT NULL AUTO_INCREMENT,
id_persona int(11) NOT NULL,
pais VARCHAR(45) DEFAULT NULL,
cp VARCHAR(45) DEFAULT NULL,
PRIMARY KEY(id_domicilio)
) ENGINE=InnoDB default charset=utf8;

CREATE TABLE t_persona(
id_persona int(11) NOT NULL AUTO_INCREMENT,
paterno VARCHAR(45) DEFAULT NULL,
materno VARCHAR(45) DEFAULT NULL,
nombre VARCHAR(45) DEFAULT NULL,
PRIMARY KEY(id_persona)
) ENGINE=InnoDB AUTO_INCREMENT=3 default charset=utf8;

/*consulta para agregar un fk con comandos */
ALTER TABLE t_domicilio ADD INDEX fk_idpersonaDomicilio (id_persona) ;
ALTER TABLE t_domicilio
ADD CONSTRAINT fk_idpersonaDomicilio
  FOREIGN KEY (id_persona)
  REFERENCES t_persona (id_persona)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  /*
-------------------------------------------------------------------------------------------------------
INNER JOIN EN MYSQL
-------------------------------------------------------------------------------------------------------
*/
select tp.id_persona,tp.nombre,td.pais from t_persona as tp
 inner join t_domicilio as td 
 on tp.id_persona =td.id_persona;

  

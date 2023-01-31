/*
--------------------------------------------------------------
CONSULTAS
--------------------------------------------------------------
*/
select*from sakila.category;
select name from sakila.category;
select first_name as nombre,last_name as Nombre from sakila.customer where active=1;
-- se muestra del 3 y que sean  9 registros;
select*from sakila.category LIMIT 3,9;
/*
--------------------------------------------------------------
SUBCONSULTAS
--------------------------------------------------------------
*/
-- donde sea language =1 y rental_rate=2.99
select*from sakila.film where language_id=1 and rental_rate=2.99;

select*from sakila.film where language_id in(select l.language_id from sakila.language l where l.language_id>1);
/*
--------------------------------------------------------------
CONSULTAS MULTITABLAS
--------------------------------------------------------------
*/
select*from sakila.film as f 
inner join sakila.language as l on f.language_id=l.language_id 
inner join sakila.inventory as i on f.film_id=i.film_id
where original_language_id is null;
-- para unir debe de concider el numero de columnas en ambas tablas
select film_id from sakila.film union select film_id from sakila.inventory;
/*
--------------------------------------------------------------
CONSULTAS MULTITABLAS
--------------------------------------------------------------
*/
/*
--------------------------------------------------------------
VISTAS
--------------------------------------------------------------
*/
-- crear vista
-------- ALTER o CREATE
CREATE VIEW vista_film as 
select f.film_id,f.title,f.description, i.inventory_id from sakila.film as f 
inner join sakila.language as l on f.language_id=l.language_id 
inner join sakila.inventory as i on f.film_id=i.film_id;
-- consultar vista
select*from vista_film;
-- movimientos de la vista
SHOW CREATE VIEW vista_film;
-- eliminar vista
DROP VIEW vista_film;
/*
--------------------------------------------------------------
PROCEDIMIENTO ALMACENADO
--------------------------------------------------------------
*/
DELIMITER //
CREATE PROCEDURE productoXcategoria (IN id INT)
BEGIN
SELECT * FROM sakila.customer where customer_id=id;
END //

DELIMITER ;

-- llamar un procedimiento almacenamiento 
CALL productoXcategoria (3);
-- como se creo un procedimiento almacenamiento 
SHOW CREATE procedure productoXcategoria;
-- eliminar un procedimiento almacenado;
DROP PROCEDURE  productoXcategoria;
/*
--------------------------------------------------------------
TIGGER
--------------------------------------------------------------
*/
DELIMITER |
CREATE TRIGGER tempTrigger BEFORE INSERT ON categoria
FOR EACH ROW BEGIN
INSERT INTO temp(nombre) VALUE(new.nombre);
END;

-- insertar en donde inserto en categoria y en tabla temporal
insert into categoria(nombre) value('trigger');

-- verificar como esta construido
SHOW CREATE TRIGGER tempTrigger;
--eliminar
DROP TRIGGER tempTrigger;


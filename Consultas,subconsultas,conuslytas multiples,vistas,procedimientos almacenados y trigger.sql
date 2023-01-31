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

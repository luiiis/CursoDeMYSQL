/*
----------------------------------------------------------------------------------------------------------
Seleccionar datos con mysql
----------------------------------------------------------------------------------------------------------
*/
-- el * es para llamar a todos los campos
select * from t_prueba;
select peso, peso from t_prueba;
/*
----------------------------------------------------------------------------------------------------------
Clausula where con mysql
----------------------------------------------------------------------------------------------------------
*/
select * from t_prueba where id_prueba=1;
select*from t_prueba where fecha='2022-02-02';
/*
----------------------------------------------------------------------------------------------------------
Clausula between con mysql
----------------------------------------------------------------------------------------------------------
*/
select*from t_prueba where peso between 60 and 80;
select*from t_prueba where fecha between '2018-01-01' and '2022-02-02'
/*
----------------------------------------------------------------------------------------------------------
Clausula like con mysql
----------------------------------------------------------------------------------------------------------
3 maneras o formas de utilizar like, aunque son 6:or
--'a%'comienza con la letra a
--'%a' termina con la letra a
--'%or%' tiene dentro de la cadena un or
*/
select*from t_prueba where nombre like 'l%';
select*from t_prueba where nombre like '%u';
select*from t_prueba where nombre like '%u%';

/*
----------------------------------------------------------------------------------------------------------
Operador logico AND OR  con mysql
----------------------------------------------------------------------------------------------------------
*/
-- con que se cumpla una de las dos
select*from t_prueba where fecha='2018-01-06' or fecha ='2014-06-22';
-- se tiene que cumplir la condicion 
select*from t_prueba where fecha='2018-01-06' and fecha ='2014-06-23';
/*
----------------------------------------------------------------------------------------------------------
Operador diferente  con mysql
----------------------------------------------------------------------------------------------------------
*/
select*from t_prueba where nombre <>'juan';

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


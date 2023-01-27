/*crear usuario con contraseña*/
create user 'juan'@'localhost' identified by 'hola';
show grants for 'juan'@'localhost';

/*Asignar permisos*/
/*GRANT [permiso] ON [nombre de base de datos].[nombre de tabla] TO '[nombre de usuario]'*/
grant select on phpmyadmin.pma__bookmark to 'juan'@'localhost';
show grants for 'juan'@'localhost';
/*permiso para todas la sbase de datos con select*/
grant select on *.* to 'juan'@'localhost';



/*revocar permisos*/
/*REVOKE[permiso] ON [nombre de base de datos].[nombre tabla] FROM '[nombre usuario]'@'localhost'*/
revoke select on phpmyadmin.pma__bookmark from 'juan'@'localhost';
show grants for 'juan'@'localhost';
revoke select on *.* from 'juan'@'localhost';

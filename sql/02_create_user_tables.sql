-- Creamos varios usuarios y les asignamos sus contraseñas
CREATE USER 'Pepe'@'localhost' IDENTIFIED BY '1234';

CREATE USER 'Javier'@'localhost' IDENTIFIED BY '1234';

CREATE USER 'Maria'@'localhost' IDENTIFIED BY '1234';


-- Creamos roles y añadimos los usuarios al rol
CREATE ROLE 'Trabajadores';
GRANT Trabajadores to 'Javier'@'localhost', 'Maria'@'localhost';

CREATE ROLE 'Dueño';
GRANT Dueño TO 'Pepe'@'localhost';

-- Activamos el rol
SET ROLE Trabajadores;
SET ROLE Dueño;

-- Le damos privilegios a los usuarios y a los roles
GRANT ALL ON bike_shop TO 'Pepe'@'localhost';

GRANT SELECT ON bike_shop.* TO Trabajadores;

-- Para aplicar cambios 
FLUSH PRIVILEGES;
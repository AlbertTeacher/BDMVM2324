CREATE DATABASE IF NOT EXISTS IEmpleats;

USE IEmpleats;

-- Creación de la tabla empleados
CREATE TABLE IF NOT EXISTS empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario DECIMAL(10, 2)
);

-- Generación de datos de ejemplo (1000 registros)
DELIMITER //
CREATE PROCEDURE generate_data()
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE i < 10000000 DO
        INSERT INTO empleados (nombre, departamento, salario)
        VALUES
        (CONCAT('Empleado', i),
         CASE
             WHEN i < 400 THEN 'Ventas'
             WHEN i < 700 THEN 'Recursos Humanos'
             ELSE 'Tecnología'
         END,
         RAND() * 10000);
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;

CALL generate_data();


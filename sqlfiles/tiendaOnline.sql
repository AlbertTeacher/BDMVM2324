-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS tienda_online;

-- Selección de la base de datos
USE tienda_online;

-- Creación de la tabla productos
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    categoria VARCHAR(50),
    disponible TINYINT(1)
);

-- Inserción de datos de ejemplo
INSERT INTO productos (nombre, descripcion, precio, categoria, disponible) VALUES
('Producto 1', 'Descripción del producto 1', 10.50, 'Electrónica', 1),
('Producto 2', 'Descripción del producto 2', 20.75, 'Moda', 1),
('Producto 3', 'Descripción del producto 3', 15.00, 'Hogar', 0),
('Producto 4', 'Descripción del producto 4', 30.25, 'Electrónica', 1),
('Producto 5', 'Descripción del producto 5', 25.50, 'Moda', 0);


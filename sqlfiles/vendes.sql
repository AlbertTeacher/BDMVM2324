-- Crear la base de dades
CREATE DATABASE IF NOT EXISTS Vendes;
USE Vendes;

-- Crear la taula Vendes
CREATE TABLE IF NOT EXISTS Vendes (
    ProducteID INT,
    Quantitat INT,
    PreuUnitari DECIMAL(10, 2)
);

-- Afegir dades
INSERT INTO Vendes VALUES
(1, 5, 20.00),
(2, 3, 15.50),
(1, 2, 20.00),
(3, 1, 30.00),
(2, 4, 15.50),
(3, 2, 30.00);

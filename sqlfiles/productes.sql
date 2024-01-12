-- Crear la base de dades
CREATE TABLE IF NOT EXISTS Productes;
USE Productes;

-- Crear la taula Productes
CREATE TABLE Productes (
    ProducteID INT,
    Categoria VARCHAR(50),
    Preu DECIMAL(10, 2),
    Stock INT
);

INSERT INTO Productes VALUES
(1, 'Electrónica', 499.99, 30),
(2, 'Roba', 35.50, 100),
(3, 'Electrónica', 799.99, 15),
(4, 'Roba', 20.00, 50),
(5, 'Electrodoméstics', 899.99, 10),
(6, 'Electrodoméstics', 1299.99, 5);

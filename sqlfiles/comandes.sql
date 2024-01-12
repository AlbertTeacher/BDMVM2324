-- Crear la base de dades
CREATE DATABASE IF NOT EXISTS Comandes;
USE Comandes;

-- Crear la taula Comandes
CREATE TABLE Comandes (
    ComandaID INT,
    DataComanda DATE,
    ImportTotal DECIMAL(10, 2)
);

INSERT INTO Comandes VALUES
(1, '2023-01-10', 120.00),
(2, '2023-01-12', 89.50),
(3, '2023-01-15', 200.00),
(4, '2023-01-18', 150.50),
(5, '2023-01-22', 180.00),
(6, '2023-01-25', 250.00);

-- Crear la base de dades
CREATE DATABASE IF NOT EXISTS ComandesNules;
USE ComandesNules;

-- Crear la taula ComandesNules
CREATE TABLE ComandesNules (
    ComandesID INT,
    ClientID INT,
    DataComanda DATE,
    ImportTotal DECIMAL(10, 2)
);

INSERT INTO ComandesNules VALUES
(1, 1, '2023-01-10', 120.00),
(2, 2, '2023-01-12', 89.50),
(3, 3, NULL, 200.00),
(4, 4, '2023-01-18', 150.50),
(5, 1, '2023-01-22', NULL),
(6, 2, '2023-01-25', 250.00);

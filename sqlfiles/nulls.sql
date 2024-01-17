-- Crear la base de dades
CREATE DATABASE IF NOT EXISTS NullsDB;
USE NullsDB;

-- Crear les taules
CREATE TABLE Productes (
    ProducteID INT,
    Nom VARCHAR(50),
    Stock INT,
    Preu DECIMAL(10, 2)
);

CREATE TABLE Vendes (
    VendaID INT,
    ProducteID INT,
    Quantitat INT,
    Import DECIMAL(10, 2)
);

CREATE TABLE Empleats (
    EmpleatID INT,
    Nom VARCHAR(50),
    Sou DECIMAL(10, 2),
    Departament VARCHAR(50)
);

INSERT INTO Productes VALUES
(1, 'Llapis', 100, 0.50),
(2, 'Quadern', NULL, 2.50),
(3, 'Goma', 50, NULL),
(4, 'Bolígraf', 75, 1.20);

INSERT INTO Vendes VALUES
(1, 1, 20, 10.00),
(2, 2, 15, NULL),
(3, 3, 10, 7.50),
(4, 4, 25, 30.00),
(5, 1, 15, NULL);

INSERT INTO Empleats VALUES
(1, 'Anna', 45000.00, 'Ventes'),
(2, NULL, 60000.00, 'IT'),
(3, 'Pau', 52000.00, 'Finances'),
(4, 'Jordi', NULL, 'Ventes'),
(5, 'Clàudia', 48000.00, 'Recursos Humans');

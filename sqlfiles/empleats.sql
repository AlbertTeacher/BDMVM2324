-- Crear la base de dades
CREATE DATABASE IF NOT EXISTS Empleats;
USE Empleats;

-- Crear la taula Empleats
CREATE TABLE Empleats (
    EmpleatID INT,
    Nom VARCHAR(50),
    Departament VARCHAR(50),
    Salari DECIMAL(10, 2)
);

-- Afegir les dades
INSERT INTO Empleats VALUES
(1, 'Juan', 'Vendes', 50000.00),
(2, 'María', 'Vendes', 55000.00),
(3, 'Carles', 'Tecnología', 60000.00),
(4, 'Ana', 'Recursos Humans', 48000.00),
(5, 'Pere', 'Tecnología', 62000.00);

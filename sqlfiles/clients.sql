-- Crear la base de dades
CREATE DATABASE IF NOT EXISTS Clients;
USE Clients;

-- Crear la taula Clients
CREATE TABLE Clients (
    ClientID INT,
    Nom VARCHAR(50),
    Direccio VARCHAR(100),
    Telefon VARCHAR(15)
);

INSERT INTO Clients VALUES
(1, 'Juan', 'Carrer A, Ciutat', '123-456-7890'),
(2, 'Ana', NULL, '987-654-3210'),
(3, 'Carles', 'Carrer B, Ciutat', NULL),
(4, 'María', 'Carrer C, Ciutat', '555-123-4567');

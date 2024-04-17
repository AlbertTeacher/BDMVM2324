-- Crear la base de dades
CREATE DATABASE my_database;

-- Utilitzar la base de dades
USE my_database;

-- Crear la taula de clients amb dades fictícies
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    cognoms VARCHAR(50),
    adreca VARCHAR(100),
    telefon VARCHAR(20),
    email VARCHAR(50)
);

-- Afegir dades fictícies a la taula de clients
INSERT INTO clients (nom, cognoms, adreca, telefon, email) VALUES
('Anna', 'Garcia', 'Carrer Major, 123', '123456789', 'anna@example.com'),
('David', 'Martínez', 'Avinguda Gran, 45', '987654321', 'david@example.com'),
('Laura', 'Sánchez', 'Plaça del Sol, 7', '555123456', 'laura@example.com');


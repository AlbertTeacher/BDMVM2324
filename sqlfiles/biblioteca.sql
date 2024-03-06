-- Crear la base de dades
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Taula d'autors
CREATE TABLE IF NOT EXISTS autors (
    id INT PRIMARY KEY,
    nom VARCHAR(50),
    cognom VARCHAR(50),
    data_naixement DATE
);

-- Taula de categories
CREATE TABLE IF NOT EXISTS categories (
    id INT PRIMARY KEY,
    nom VARCHAR(50)
);

-- Taula de llibres
CREATE TABLE IF NOT EXISTS llibres (
    id INT PRIMARY KEY,
    titol VARCHAR(100),
    autor_id INT,
    categoria_id INT,
    data_publicacio DATE,
    FOREIGN KEY (autor_id) REFERENCES autors(id),
    FOREIGN KEY (categoria_id) REFERENCES categories(id)
);

-- Inserir dades d'exemple a la base de dades
INSERT INTO autors VALUES
    (1, 'George', 'Orwell', '1903-06-25'),
    (2, 'Jane', 'Austen', '1775-12-16'),
    (3, 'J.K.', 'Rowling', '1965-07-31');

INSERT INTO categories VALUES
    (1, 'Ciència Ficció'),
    (2, 'Romàntica'),
    (3, 'Història');

INSERT INTO llibres VALUES
    (1, '1984', 1, 1, '1949-06-08'),
    (2, 'Sentit i sensibilitat', 2, 2, '1811-01-01'),
    (3, 'Harry Potter i la pedra filosofal', 3, 1, '1997-06-26'),
    (4, 'Rebel·lió a la granja', 1, 1, '1945-08-17'),
    (5, 'Orgull i prejudici', 2, 2, '1813-01-28'),
    (6, 'Harry Potter i la cambra secreta', 3, 1, '1998-07-02'),
    (7, 'La granja dels animals', 1, 1, '1945-08-17'),
    (8, 'Emma', 2, 2, '1815-12-23');

-- Crear les bases de dades
CREATE DATABASE IF NOT EXISTS InternalComposition;

-- Crear les taules
CREATE TABLE InternalComposition.Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(50),
    Cognoms VARCHAR(50)
);

CREATE TABLE InternalComposition.Orders (
    OrderID INT PRIMARY KEY,
    ClientID INT,
    Producte VARCHAR(50),
    Quantitat INT,
    FOREIGN KEY (ClientID) REFERENCES InternalComposition.Clients(ClientID)
);

CREATE TABLE InternalComposition.Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Edad INT
);

CREATE TABLE InternalComposition.Cursos (
    CursoID INT PRIMARY KEY,
    NombreCurso VARCHAR(50),
    EstudianteID INT,
    FOREIGN KEY (EstudianteID) REFERENCES InternalComposition.Estudiantes(EstudianteID)
);

-- Inserir dades
INSERT INTO InternalComposition.Clients VALUES
(1, 'Maria', 'Gomez'),
(2, 'Juan', 'Pérez'),
(3, 'Laura', 'Martínez');

INSERT INTO InternalComposition.Orders VALUES
(101, 1, 'Llapis', 5),
(102, 2, 'Quadern', 2),
(103, 1, 'Goma', 3);

INSERT INTO InternalComposition.Estudiantes VALUES
(1, 'Carlos', 20),
(2, 'Ana', 22),
(3, 'Miguel', 21);

INSERT INTO InternalComposition.Cursos VALUES
(101, 'Programación', 1),
(102, 'Diseño Gráfico', 2),
(103, 'Inglés', 3),
(104, 'Matemáticas', 1);

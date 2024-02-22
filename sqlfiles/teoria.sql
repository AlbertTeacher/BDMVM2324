-- Crear les bases de dades
CREATE DATABASE IF NOT EXISTS InternalComposition;
CREATE DATABASE IF NOT EXISTS Cursos;
CREATE DATABASE IF NOT EXISTS Llibreries;
CREATE DATABASE IF NOT EXISTS Escola;

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

CREATE TABLE Cursos.Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Cursos.Cursos (
    CursoID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Cursos.Inscripciones (
    InscripcionID INT PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

CREATE TABLE Llibreries.llibres_llibreria1 (
    id_llibre INT PRIMARY KEY,
    titol VARCHAR(100),
    autor VARCHAR(100),
    preu DECIMAL(10, 2)
);

CREATE TABLE Llibreries.llibres_llibreria2 (
    id_llibre INT PRIMARY KEY,
    titol VARCHAR(100),
    autor VARCHAR(100),
    preu DECIMAL(10, 2)
);

CREATE TABLE Escola.cursos (
    id_curs INT PRIMARY KEY,
    nom_curs VARCHAR(50),
    professor VARCHAR(50),
    hores_setmanals INT
);

CREATE TABLE Escola.estudiants (
    id_estudiant INT PRIMARY KEY,
    nom VARCHAR(50),
    cognom VARCHAR(50),
    edat INT,
    id_curs INT,
    FOREIGN KEY (id_curs) REFERENCES cursos(id_curs)
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

INSERT INTO Cursos.Estudiantes (EstudianteID, Nombre) VALUES
(1, 'Juan Pérez'),
(2, 'Ana Gómez'),
(3, 'Carlos Rodríguez'),
(4, 'María López'),
(5, 'David Martínez');

INSERT INTO Cursos.Cursos (CursoID, Nombre) VALUES
(101, 'Matemáticas'),
(102, 'Historia'),
(103, 'Ciencias'),
(104, 'Inglés'),
(105, 'Arte');

INSERT INTO Cursos.Inscripciones (InscripcionID, EstudianteID, CursoID) VALUES
(1, 1, 101),
(2, 1, 103),
(3, 2, 102),
(4, 3, 104),
(5, 4, 101),
(6, 4, 105),
(7, 5, 103),
(8, 5, 104);

INSERT INTO Llibreries.llibres_llibreria1 (id_llibre, titol, autor, preu)
VALUES
    (1, 'El Senyor dels Anells', 'J.R.R. Tolkien', 25.99),
    (2, 'Harry Potter i la Pedra Filosofal', 'J.K. Rowling', 19.99),
    (3, 'Cien anys de soledad', 'Gabriel Garcia Marquez', 22.50),
    (4, '1984', 'George Orwell', 18.75),
    (5, 'Orgull i prejudici', 'Jane Austen', 15.00);

INSERT INTO Llibreries.llibres_llibreria2 (id_llibre, titol, autor, preu)
VALUES
    (2, 'Harry Potter i la Pedra Filosofal', 'J.K. Rowling', 22.99),
    (3, 'Cien anys de soledad', 'Gabriel Garcia Marquez', 24.50),
    (4, '1984', 'George Orwell', 19.99),
    (5, 'Orgull i prejudici', 'Jane Austen', 14.50),
    (6, 'Crònica de una mort anunciada', 'Gabriel Garcia Marquez', 20.25);

INSERT INTO Escola.cursos (id_curs, nom_curs, professor, hores_setmanals)
VALUES
    (1, 'Matemàtiques', 'Dr. Smith', 4),
    (2, 'Història', 'Prof. Johnson', 3),
    (3, 'Informàtica', 'Dr. Brown', 5);

INSERT INTO Escola.estudiants (id_estudiant, nom, cognom, edat, id_curs)
VALUES
    (1, 'Anna', 'Gómez', 20, 1),
    (2, 'Marc', 'Martínez', 22, 2),
    (3, 'Laura', 'López', 21, 1),
    (4, 'Eric', 'Espasa', 23, 3);

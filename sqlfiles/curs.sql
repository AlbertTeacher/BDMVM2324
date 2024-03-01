CREATE DATABASE IF NOT EXISTS Curs;

USE Curs;

-- Creació de la taula estudiants
CREATE TABLE Curs.estudiants (
    id_estudiant INT PRIMARY KEY,
    nom VARCHAR(50),
    cognom VARCHAR(50),
		edat INT,
		adresa VARCHAR(50)
);

-- Creació de la taula professors
CREATE TABLE Curs.professors (
    id_professor INT PRIMARY KEY,
    nom_professor VARCHAR(50),
		materia VARCHAR(50)
);

-- Creació de la taula cursos
CREATE TABLE Curs.cursos (
    id_curs INT PRIMARY KEY,
    nom_curs VARCHAR(50),
    id_professor INT,
		durada_mesos INT,
    FOREIGN KEY (id_professor) REFERENCES professors(id_professor)
);

-- Creació de la taula matriculacions
CREATE TABLE Curs.matriculacions (
    id_estudiant INT,
    id_curs INT,
		data_matriculacio VARCHAR(50),
    PRIMARY KEY (id_estudiant, id_curs),
    FOREIGN KEY (id_estudiant) REFERENCES estudiants(id_estudiant),
    FOREIGN KEY (id_curs) REFERENCES cursos(id_curs)
);

-- Creació de la taula exàmens
CREATE TABLE Curs.examens (
    id_estudiant INT,
    id_curs INT,
		data_examen VARCHAR(50),
    nota DECIMAL(4,2),
    PRIMARY KEY (id_estudiant, id_curs),
    FOREIGN KEY (id_estudiant) REFERENCES estudiants(id_estudiant),
    FOREIGN KEY (id_curs) REFERENCES cursos(id_curs)
);

-- Inserció de més dades a la taula professors
INSERT INTO Curs.professors (id_professor, nom_professor, materia) VALUES
(4, 'Prof. Taylor', 'Química'),
(5, 'Prof. Anderson', 'Literatura'),
(6, 'Prof. Garcia', 'Informàtica'),
(7, 'Prof. Smith', 'Història'),
(8, 'Prof. Davis', 'Matemàtiques'),
(9, 'Prof. Johnson', 'Física'),
(10, 'Prof. White', 'Biologia');

-- Inserció de més dades a la taula estudiants
INSERT INTO Curs.estudiants (id_estudiant, nom, cognom, edat, adresa) VALUES
(105, 'Eva', 'Taylor', 22, 'Carrer Principal, 78'),
(106, 'Frank', 'Anderson', 24, 'Avinguda Central, 56'),
(107, 'Grace', 'Garcia', 23, 'Plaça Major, 34'),
(108, 'Henry', 'Miller', 21, 'Carrer Nou, 12'),
(109, 'Alice', 'Clark', 20, 'Via Llarga, 90'),
(110, 'Bob', 'Brown', 22, 'Carrer Estret, 23'),
(111, 'Sophie', 'Moore', 25, 'Plaça del Mercat, 45');

-- Inserció de més dades a la taula cursos
INSERT INTO Curs.cursos (id_curs, nom_curs, id_professor, durada_mesos) VALUES
(204, 'Química Orgànica', 4, 7),
(205, 'Poesia Contemporània', 5, 6),
(206, 'Desenvolupament Web', 6, 10),
(207, 'Història Antiga', 7, 8),
(208, 'Àlgebra Avançada', 8, 9),
(209, 'Física Quàntica', 9, 12),
(210, 'Biologia Molecular', 10, 9);

-- Inserció de més dades a la taula matriculacions
INSERT INTO Curs.matriculacions (id_estudiant, id_curs, data_matriculacio) VALUES
(105, 204, '2023-02-10'),
(106, 205, '2023-03-18'),
(107, 206, '2023-05-22'),
(108, 204, '2023-02-15'),
(105, 205, '2023-04-01'),
(106, 206, '2023-06-08'),
(109, 207, '2023-07-12'),
(110, 208, '2023-08-25'),
(111, 209, '2023-09-01');

-- Inserció de més dades a la taula exàmens
INSERT INTO Curs.examens (id_estudiant, id_curs, data_examen, nota) VALUES
(105, 204, '2023-09-01', 85.2),
(106, 205, '2023-10-10', 92.7),
(107, 206, '2023-11-15', 78.5),
(108, 204, '2023-09-05', 89.0),
(105, 205, '2023-10-15', 91.3),
(106, 206, '2023-11-20', 87.6),
(109, 207, '2023-12-01', 75.8),
(110, 208, '2023-12-10', 94.2),
(111, 209, '2023-12-15', 88.5);


CREATE DATABASE IF NOT EXISTS DropTheory;

USE DropTheory;

CREATE TABLE Departamentos (
    idDepartamento INT PRIMARY KEY,
    nombreDepartamento VARCHAR(100) NOT NULL
);

CREATE TABLE Empleados (
    idEmpleado INT PRIMARY KEY,
    nombreEmpleado VARCHAR(100) NOT NULL,
    idDepartamento INT,
    FOREIGN KEY (idDepartamento) REFERENCES Departamentos(idDepartamento)
);

CREATE TABLE Proyectos (
    idProyecto INT PRIMARY KEY,
    nombreProyecto VARCHAR(100) NOT NULL,
    idDepartamento INT,
    FOREIGN KEY (idDepartamento) REFERENCES Departamentos(idDepartamento)
);

-- Inserts para la tabla Departamentos
INSERT INTO Departamentos (idDepartamento, nombreDepartamento) VALUES (1, 'Ventas');
INSERT INTO Departamentos (idDepartamento, nombreDepartamento) VALUES (2, 'Marketing');
INSERT INTO Departamentos (idDepartamento, nombreDepartamento) VALUES (3, 'Producción');

-- Inserts para la tabla Empleados
INSERT INTO Empleados (idEmpleado, nombreEmpleado, idDepartamento) VALUES (1, 'Juan', 1);
INSERT INTO Empleados (idEmpleado, nombreEmpleado, idDepartamento) VALUES (2, 'María', 1);
INSERT INTO Empleados (idEmpleado, nombreEmpleado, idDepartamento) VALUES (3, 'Pedro', 2);

-- Inserts para la tabla Proyectos
INSERT INTO Proyectos (idProyecto, nombreProyecto, idDepartamento) VALUES (1, 'Proyecto A', 1);
INSERT INTO Proyectos (idProyecto, nombreProyecto, idDepartamento) VALUES (2, 'Proyecto B', 1);
INSERT INTO Proyectos (idProyecto, nombreProyecto, idDepartamento) VALUES (3, 'Proyecto C', 2);


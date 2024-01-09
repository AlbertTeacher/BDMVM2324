-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS StarWars;
USE StarWars;

-- Crear la tabla "Personajes"
CREATE TABLE IF NOT EXISTS Personajes (
    PersonajeID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Especie VARCHAR(50),
    PlanetaNatal VARCHAR(50)
);

-- Crear la tabla "Planetas"
CREATE TABLE IF NOT EXISTS Planetas (
    PlanetaID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Clima VARCHAR(50),
    Terreno VARCHAR(50)
);

-- Crear la tabla "NavesEspaciales"
CREATE TABLE IF NOT EXISTS NavesEspaciales (
    NaveID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Modelo VARCHAR(50),
    Fabricante VARCHAR(50)
);

-- Crear la tabla "Peliculas"
CREATE TABLE IF NOT EXISTS Peliculas (
    PeliculaID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    AnioEstreno INT
);

-- Crear la tabla de relación "PersonajePelicula"
CREATE TABLE IF NOT EXISTS PersonajePelicula (
    PersonajeID INT,
    PeliculaID INT,
    PRIMARY KEY (PersonajeID, PeliculaID),
    FOREIGN KEY (PersonajeID) REFERENCES Personajes(PersonajeID),
    FOREIGN KEY (PeliculaID) REFERENCES Peliculas(PeliculaID)
);

-- Crear la tabla de relación "PersonajeNave"
CREATE TABLE IF NOT EXISTS PersonajeNave (
    PersonajeID INT,
    NaveID INT,
    PRIMARY KEY (PersonajeID, NaveID),
    FOREIGN KEY (PersonajeID) REFERENCES Personajes(PersonajeID),
    FOREIGN KEY (NaveID) REFERENCES NavesEspaciales(NaveID)
);

-- Crear la tabla de relación "PersonajePlaneta"
CREATE TABLE IF NOT EXISTS PersonajePlaneta (
    PersonajeID INT,
    PlanetaID INT,
    PRIMARY KEY (PersonajeID, PlanetaID),
    FOREIGN KEY (PersonajeID) REFERENCES Personajes(PersonajeID),
    FOREIGN KEY (PlanetaID) REFERENCES Planetas(PlanetaID)
);

-- Insertar datos en la tabla "Personajes"
INSERT INTO Personajes (PersonajeID, Nombre, Especie, PlanetaNatal) VALUES
(1, 'Luke Skywalker', 'Humano', 'Tatooine'),
(2, 'Princess Leia', 'Humano', 'Alderaan'),
(3, 'Darth Vader', 'Sith', 'Tatooine'),
(4, 'Han Solo', 'Humano', 'Corellia'),
(5, 'Obi-Wan Kenobi', 'Humano', 'Stewjon'),
(6, 'Yoda', 'Desconocida', 'Desconocido'),
(7, 'Chewbacca', 'Wookiee', 'Kashyyyk'),
(8, 'Mace Windu', 'Huma', 'Haruun Kal'),
(9, 'Padme Amidala', 'Huma', 'Naboo'),
(10, 'Emperor Palpatine', 'Sith', 'Naboo');
-- Añade más personajes según sea necesario...

-- Insertar datos en la tabla "Planetas"
INSERT INTO Planetas (PlanetaID, Nombre, Clima, Terreno) VALUES
(1, 'Tatooine', 'Arido', 'Desierto'),
(2, 'Alderaan', 'Templado', 'Montañoso'),
(3, 'Coruscant', 'Urbano', 'Ciudad'),
(4, 'Stewjon', 'Desconocido', 'Desconocido'),
(5, 'Kashyyyk', 'Tropical', 'Bosques'),
(6, 'Naboo', 'Húmedo', 'Llanuras'),
(7, 'Haruun Kal', 'Àrid', 'Desertic'),
(8, 'Kamino', 'Plujós', 'Oceànic'),
(9, 'Endor', 'Boscós', 'Boscos');
-- Añade más planetas según sea necesario...

-- Insertar datos en la tabla "NavesEspaciales"
INSERT INTO NavesEspaciales (NaveID, Nombre, Modelo, Fabricante) VALUES
(1, 'Millennium Falcon', 'YT-1300 light freighter', 'Corellian Engineering Corporation'),
(2, 'X-wing Starfighter', 'T-65 X-wing', 'Incom Corporation'),
(3, 'TIE Fighter', 'TIE/ln starfighter', 'Sienar Fleet Systems'),
(4, 'Slave I', 'Firespray-31', 'Kuat Systems Engineering'),
(5, 'Imperial Star Destroyer', 'Imperial-class Star Destroyer', 'Kuat Drive Yards'),
(6, 'TIE Bomber', 'TIE/sa bomber', 'Sienar Fleet Systems'),
(7, 'Venator-class Star Destroyer', 'Venator-class', 'Kuat Drive Yards'),
(8, 'Death Star', 'DS-1 Orbital Battle Station', 'Imperial Department of Military Research'),
(9, 'Slave II', 'Firespray-31', 'Kuat Systems Engineering');
-- Añade más naves espaciales según sea necesario...

-- Insertar datos en la tabla "Peliculas"
INSERT INTO Peliculas (PeliculaID, Titulo, AnioEstreno) VALUES
(1, 'Star Wars: Episode IV - A New Hope', 1977),
(2, 'Star Wars: Episode V - The Empire Strikes Back', 1980),
(3, 'Star Wars: Episode VI - Return of the Jedi', 1983),
(4, 'Star Wars: Episode I - The Phantom Menace', 1999),
(5, 'Star Wars: Episode II - Attack of the Clones', 2002),
(6, 'Star Wars: Episode III - Revenge of the Sith', 2005),
(7, 'Star Wars: Episode VII - The Force Awakens', 2015),
(8, 'Star Wars: Episode VIII - The Last Jedi', 2017),
(9, 'Star Wars: Episode IX - The Rise of Skywalker', 2019);
-- Añade más películas según sea necesario...

-- Insertar datos en la tabla de relación "PersonajePelicula"
INSERT INTO PersonajePelicula (PersonajeID, PeliculaID) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 4),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 7),
(10, 7),
(8, 8),
(9, 8),
(10, 8),
(8, 9),
(9, 9),
(10, 9);
-- Añade más relaciones entre personajes y películas según sea necesario...

-- Insertar datos en la tabla de relación "PersonajeNave"
INSERT INTO PersonajeNave (PersonajeID, NaveID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(4, 4),
(5, 5),
(6, 6),
(7, 5),
(8, 7),
(9, 8),
(10, 8),
(7, 9);
-- Añade más relaciones entre personajes y naves según sea necesario...

-- Insertar datos en la tabla de relación "PersonajePlaneta"
INSERT INTO PersonajePlaneta (PersonajeID, PlanetaID) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 7),
(9, 8),
(10, 9),
(7, 8);
-- Añade más relaciones entre personajes y planetas según sea necesario...
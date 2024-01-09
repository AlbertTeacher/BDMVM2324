-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS TiendaOnline;
USE TiendaOnline;

-- Crear la tabla "Clientes"
CREATE TABLE IF NOT EXISTS Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Email VARCHAR(100)
);

-- Crear la tabla "Productos"
CREATE TABLE IF NOT EXISTS Productos (
    ProductoID INT PRIMARY KEY,
    NombreProducto VARCHAR(100),
    Precio DECIMAL(10, 2),
    Stock INT
);

-- Crear la tabla "Pedidos"
CREATE TABLE IF NOT EXISTS Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    FechaPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Crear la tabla "DetallesPedido" para manejar los productos en cada pedido
CREATE TABLE IF NOT EXISTS DetallesPedido (
    DetalleID INT PRIMARY KEY,
    PedidoID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

-- Insertar algunos datos de ejemplo
INSERT INTO Clientes (ClienteID, Nombre, Apellido, Email) VALUES
(1, 'Juan', 'Pérez', 'juan@example.com'),
(2, 'María', 'Gómez', 'maria@example.com');

INSERT INTO Productos (ProductoID, NombreProducto, Precio, Stock) VALUES
(1, 'Portátil', 800.00, 10),
(2, 'Teléfono', 400.50, 20),
(3, 'Mouse', 25.99, 50);

INSERT INTO Pedidos (PedidoID, ClienteID, FechaPedido) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-02-20');

INSERT INTO DetallesPedido (DetalleID, PedidoID, ProductoID, Cantidad, PrecioUnitario) VALUES
(1, 1, 1, 2, 800.00),
(2, 1, 2, 1, 400.50),
(3, 2, 3, 5, 25.99);

-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Products (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Warehouses (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Address VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT AUTO_INCREMENT,
    ProductID INT,
    WarehouseID INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID) ON DELETE NO ACTION,
    WarehouseAmount INT,
    CountryID INT,
	FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

-- Populate test data

INSERT INTO Countries (ID,Name)
	VALUES (1, 'Country1'),
	       (2, 'Country2');

INSERT INTO Products (ID, Name)
    VALUES (1, 'AwesomeProduct');

INSERT INTO Warehouses (ID, Name, Address)
    VALUES (1, 'Warehouse-1', 'City-1, Street-1'),
           (2, 'Warehouse-2', 'City-2, Street-2');

INSERT INTO ProductInventory (ID, ProductID, WarehouseID, WarehouseAmount, CountryID)
    VALUES (1, 1, 1, 2, 1),
           (2, 1, 2, 5, 2);

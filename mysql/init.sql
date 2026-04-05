CREATE DATABASE IF NOT EXISTS shoplite;

USE shoplite;

CREATE TABLE Products (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(10,2),
    Image VARCHAR(500),
    Category VARCHAR(100)
);

CREATE TABLE CartItems (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductId INT,
    Quantity INT
);
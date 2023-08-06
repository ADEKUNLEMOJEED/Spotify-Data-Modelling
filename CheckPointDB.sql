CREATE DATABASE CheckpointDB;

CREATE TABLE Customers_Table(
    CustomerID VARCHAR (30) NOT NULL PRIMARY KEY,
    CustomerName VARCHAR(70) NOT NULL,
    Email VARCHAR (80) NOT NULL,
    Address VARCHAR(60) NOT NULL  
);
SELECT * FROM Customers_Table


CREATE TABLE Product_Table(
    ProductID  VARCHAR (60) NOT NULL PRIMARY KEY,
    ProductName VARCHAR (60) NOT NULL,
    Price DECIMAL CHECK (Price > 0)
);
SELECT * from Product_Table


CREATE TABLE Orders_Table(
    OrderID INT NOT NULL PRIMARY KEY,
    Quantity INT NOT NULL,
    OrderDate DATE NOT NULL,
    CustomerID VARCHAR (30) FOREIGN KEY REFERENCES Customers_Table(CustomerID),
    ProductID VARCHAR (60) FOREIGN KEY REFERENCES Product_Table(ProductID)
);

SELECT * FROM Orders_Table

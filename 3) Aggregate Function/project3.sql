DROP TABLE Sales;

CREATE TABLE Sales (
    Sale_ID INTEGER PRIMARY KEY,
    Product_Name TEXT,
    Quantity INTEGER,
    Price_Per_Unit REAL,
    Region TEXT
);

INSERT INTO Sales (Sale_ID, Product_Name, Quantity, Price_Per_Unit, Region)
VALUES
(1, 'Laptop', 10, 45000, 'North'),
(2, 'Mouse', 50, 500, 'South'),
(3, 'Keyboard', 30, 1000, 'East'),
(4, 'Monitor', 15, 7000, 'West'),
(5, 'Printer', 5, 12000, 'North'),
(6, 'Mouse', 40, 500, 'East'),
(7, 'Laptop', 8, 47000, 'South');

SELECT SUM(Quantity) AS Total_Quantity_Sold FROM Sales;

SELECT AVG(Price_Per_Unit) AS Average_Price FROM Sales;

SELECT MAX(Price_Per_Unit) AS Max_Price FROM Sales;

SELECT MIN(Price_Per_Unit) AS Min_Price FROM Sales;

SELECT COUNT(*) AS Total_Sales_Entries FROM Sales;

SELECT SUM(Quantity * Price_Per_Unit) AS Total_Revenue FROM Sales;

SELECT AVG(Quantity) AS Avg_Quantity_Sold FROM Sales;

SELECT COUNT(Product_Name) AS Products_Sold FROM Sales;

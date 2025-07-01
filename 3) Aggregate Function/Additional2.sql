DROP TABLE Products;
DROP TABLE Buyers;

CREATE TABLE Buyers (
    Buyer_ID INTEGER PRIMARY KEY,
    Buyer_Name TEXT
);

CREATE TABLE Products (
    Product_ID INTEGER PRIMARY KEY,
    Product_Name TEXT,
    Buyer_ID INTEGER
);

INSERT INTO Buyers (Buyer_ID, Buyer_Name)
VALUES
(1, 'Amulya'),
(2, 'Atulya'),
(3, 'Hi'),
(4, 'Bye');

INSERT INTO Products (Product_ID, Product_Name, Buyer_ID)
VALUES
(101, 'Laptop', 1),
(102, 'Mouse', 2),
(103, 'Keyboard', 1),
(104, 'Monitor', 3),
(105, 'Printer', 4),
(106, 'Speaker', 2);

SELECT Buyers.Buyer_Name, Products.Product_Name
FROM Buyers, Products
WHERE Buyers.Buyer_ID = Products.Buyer_ID;

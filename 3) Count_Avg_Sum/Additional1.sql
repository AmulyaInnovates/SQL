DROP TABLE Products;
Drop TABLE Customer;

CREATE TABLE Products(
PID TEXT,
PN TEXT,
BN TEXT,
CID TEXT,
PRICE REAL
);

INSERT into Products(PID,PN,BN,CID,PRICE)
VALUES
('P1','Bat','Amulya','C3',1320),
('P2','Cap','Atulya','C2',260),
('P3','Racket','Amulya','C1',1500),
('P4','Ball','Ram','C3',230),
('P5','Goggles','Shyam','C6',345);

CREATE TABLE Customer (
    S_No INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    Country TEXT,
    PB INTEGER,
    CG INTEGER
);

INSERT INTO Customer (S_No, Name, Address, Country, PB, CG)
VALUES
(1, 'Rahul', 'Delhi', 'India', 5, 80),
(2, 'Ram', 'London', 'UK', 3, 70),
(3, 'Shyam', 'New York', 'USA', 7, 90),
(4, 'Amulya', 'Hyderabad', 'India', 2, 60),
(5, 'Atulya', 'New York', 'USA', 4, 100);

SELECT * FROM Products WHERE BN= 'Amulya';
SELECT * FROM Customer WHERE Name= 'Amulya';
SELECT AVG(PRICE) FROM Products WHERE BN='Amulya';
SELECT COUNT(PRICE) FROM Products WHERE BN='Amulya';
SELECT SUM(PRICE) FROM Products WHERE BN='Amulya';

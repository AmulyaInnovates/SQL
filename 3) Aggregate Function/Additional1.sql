DROP TABLE Products;

CREATE TABLE Products(
PID TEXT,
PN TEXT,
BN TEXT,
CID TEXT,
PRICE REAL
);

INSERT INTO Products(PID, PN, BN, CID, PRICE)
VALUES
('P1', 'Bat', 'Amulya', 'C3', 1320),
('P2', 'Cap', 'Atulya', 'C2', 260),
('P3', 'Racket', 'Amulya', 'C1', 1500),
('P4', 'Ball', 'Ram', 'C3', 230),
('P5', 'Goggles', 'Shyam', 'C6', 345);

SELECT * FROM Products WHERE BN = 'Amulya';
SELECT AVG(PRICE) FROM Products WHERE BN = 'Amulya';
SELECT COUNT(PRICE) FROM Products WHERE BN = 'Amulya';
SELECT SUM(PRICE) FROM Products WHERE BN = 'Amulya';
DROP TABLE Products;

CREATE TABLE Products(
PID TEXT,
PN TEXT,
SID TEXT,
CID TEXT,
PRICE REAL
);

INSERT into Products(PID,PN,SID,CID,PRICE)
VALUES
('P1','Bat','S1','C3',1320),
('P2','Cap','S2','C2',260),
('P3','Racket','S3','C1',1500),
('P4','Ball','S4','C3',230),
('P5','Goggles','S5','C6',345);

SELECT COUNT(PRICE) FROM Products;
SELECT AVG(PRICE) FROM Products;
SELECT SUM(PRICE) FROM Products;
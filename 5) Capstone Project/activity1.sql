DROP TABLE Salesman;
DROP TABLE Customer;
DROP TABLE Orders;


CREATE TABLE Salesman(
    S_ID INTEGER PRIMARY KEY,
    Name TEXT,
    City TEXT,
    Commission INTEGER
);

INSERT INTO Salesman(S_ID, Name, City, Commission)
VALUES
(5001,'Amulya','Delhi',2000),
(5002,'Atulya','Ahmedabad',1000),
(5003,'Hi','Gujarat',1500),
(5004,'Bye','Goa',1750),
(5005,'Why','Mumbai',1600);

CREATE TABLE Customer(
    C_ID INTEGER PRIMARY KEY,
    Name TEXT,
    City TEXT,
    Grade INTEGER,
    S_ID INTEGER
);

INSERT INTO Customer(C_ID, Name, City, Grade, S_ID)
VALUES
(1001,'Hi','Kashmir',200,5001),
(1002,'Amulya','Gujarat',100,5002),
(1003,'Atulya','Ahmedabad',150,5003),
(1004,'Why','Mumbai',175,5004),
(1005,'Bye','Goa',160,5005);

CREATE TABLE Orders(
    O_NO INTEGER PRIMARY KEY,
    P_Amt INTEGER,
    Date TEXT,
    C_ID INTEGER,
    S_ID INTEGER
);

INSERT INTO Orders(O_NO, P_Amt, Date, C_ID , S_ID)
VALUES
(3001,9287,'20/3/2025',1001,5001),
(3002,7268,'13/5/2024',1002,5002),
(3003,8173,'10/2/2023',1003,5003),
(3004,6187,'17/1/2025',1004,5004),
(3005,6713,'19/8/2024',1005,5005);


SELECT Customer.Name, Salesman.Name 
FROM Customer, Salesman
WHERE Customer.City = Salesman.City;

SELECT Customer.Name, Salesman.Name
FROM Customer, Salesman
WHERE Customer.S_ID = Salesman.S_ID;

SELECT Orders.O_NO,Salesman.Name,Customer.Name, Orders.C_ID, Orders.S_ID
FROM Orders, Customer, Salesman
WHERE Customer.S_ID = Salesman.S_ID AND Customer.City != Salesman.City;
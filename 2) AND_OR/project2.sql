DROP TABLE IF EXISTS Customer;

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
(1, 'Rahul Mehta', 'Delhi', 'India', 5, 80),
(2, 'Emily Rose', 'London', 'UK', 3, 70),
(3, 'John Doe', 'New York', 'USA', 7, 90),
(4, 'Aarav Singh', 'Hyderabad', 'India', 2, 60),
(5, 'Linda Scott', 'New York', 'USA', 4, 100);

SELECT * FROM Customer;

SELECT * FROM Customer WHERE Address = 'New York';

SELECT * FROM Customer WHERE Address = 'New York' AND CG >= 100;

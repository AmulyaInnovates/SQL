DROP TABLE BankAccounts;

CREATE TABLE BankAccounts (
    Account_ID TEXT PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    Money INTEGER,
    Money_In_Stocks INTEGER
);

INSERT INTO BankAccounts (Account_ID, Name, Address, Money, Money_In_Stocks)
VALUES
('A001', 'Amulya', 'Delhi', 50000, 15000),
('A002', 'Atulya', 'Mumbai', 75000, 20000),
('A003', 'Hi', 'Bangalore', 62000, 10000),
('A004', 'Bye', 'Kolkata', 40000, 5000),
('A005', 'Ram', 'Hyderabad', 85000, 25000);

SELECT * FROM BankAccounts;

SELECT AVG(Money) FROM BankAccounts;

SELECT SUM(Money_In_Stocks) FROM BankAccounts;

SELECT MAX(Money) FROM BankAccounts;

SELECT COUNT(Account_ID) FROM BankAccounts;

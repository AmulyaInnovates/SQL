CREATE TABLE Supplier(
    SNO TEXT PRIMARY KEY,
    SName TEXT,
    Status INTEGER,
    City TEXT
);

INSERT INTO Supplier(SNO,SName,Status,City) VALUES("S1","Amulya",1,"Delhi"),
("S2","Atulya",2,"Lucknow"),
("S3","Hi",1,"Delhi"),
("S4","Bye",2,"Mumbai");

SELECT * FROM Supplier;
SELECT * FROM Supplier WHERE City = "Delhi";
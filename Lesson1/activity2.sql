CREATE TABLE Salesman(
    SID TEXT PRIMARY KEY,
    Name TEXT,
    City TEXT,
    Commission INTEGER
)

CREATE TABLE Orders(
    ONo TEXT PRIMARY KEY,
    Purchase REAL,
    Ord_Date TEXT,
    CID TEXT,
    SID TEXT
)

INSERT INTO Salesman(SID,Name,City,Commission) VALUES("1","Amulya","Delhi",970),
("2","Atulya","Shimla",1000),
("3","Bye","Lucknow",2000),
("4","Hi","Manali",3000);

INSERT INTO Orders(Ono,Purchase,Ord_Date,CID,SID) 
VALUES("1872",150.5,"2012-10-05","3885","1838"),
("17920",281.3,"2012-07-27","2998","20917"),
("39017",281.2,"2010-02-08","1092","5002"),
("19927",132.8,"1987-09-21","1973","9743");

SELECT * FROM Salesman WHERE Commission <= 2000;
SELECT * FROM Orders WHERE Purchase > 280;
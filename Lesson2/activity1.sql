CREATE TABLE Students (
    Roll_no INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Grade INTEGER,
    AGE INTEGER,
    Address TEXT
);

INSERT INTO Students (Roll_no, Name, Grade, AGE,Address)
VALUES(1, 'Ram', 9, 12,'Delhi'),
(2, 'Shyam', 10, 15, 'Mumbai'),
(3, 'Surjit', 9, 12,'Delhi'),
(4, 'Ramesh', 8, 13,'Chandigarh'),
(5, 'Ram', 10, 15,'Pune');

SELECT * FROM Students
WHERE AGE=15 AND Address='Delhi';

SELECT * FROM Students
WHERE AGE=15 AND Name='Ram';

SELECT * FROM Students
WHERE Name='Ram' OR Name='Surjit';

SELECT * FROM Students
WHERE AGE=13 OR Name='Ram';

SELECT * FROM Students
WHERE AGE=15 AND (Name='Ram' OR Name='Ramesh');
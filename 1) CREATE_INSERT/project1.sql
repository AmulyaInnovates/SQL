CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Grade INT,
    City VARCHAR(50)
);

INSERT INTO Students (StudentID, Name, Grade, City) VALUES
(1, 'Aarav Sharma', 9, 'Delhi'),
(2, 'Isha Mehta', 10, 'Mumbai'),
(3, 'Rohan Verma', 9, 'Delhi'),
(4, 'Simran Kaur', 8, 'Chandigarh'),
(5, 'Yash Joshi', 10, 'Pune');

SELECT * FROM Students
WHERE Grade = 10;
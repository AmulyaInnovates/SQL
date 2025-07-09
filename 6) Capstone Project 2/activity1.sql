CREATE TABLE IF NOT EXISTS nomnom(
    NAME TEXT,
    NEIGHBOURHOOD TEXT,
    CUISINE TEXT,
    REVIEW REAL,
    PRICE TEXT,
    HEALTH TEXT);

INSERT INTO nomnom(NAME, NEIGHBOURHOOD, CUISINE, REVIEW,PRICE,HEALTH)
VALUES
('Peter','Brooklyn','Steak',4.4,'$$$$','A'),
('Jongro','MidTown','Indian',5,'$','A'),
('Pocha','ChinaTown','Chinese',4,'$$$','B'),
('Lighthouse','Queens','American',3.9,'$','B'),
('Dirty Candy','DownTown','Italian',4.3,'$$$','A'),
('Di Fara Pizza','Brooklyn','Pizza',3.6,'$$',' ');

--Use the SQL commands you just learned and find the best dinner spots in the city and answer the following questions: 
--1)What are the distinct neighborhood 
--2)What are the distinct cuisine types? 
--3)Suppose we would like some Chinese takeout. What are our options? 
--4)Return all the restaurants with reviews of 4 and above. 
--5)Suppose Abbi and Ilana want to have dinner. Return all the restaurants that are Italian and $$$. 
--6)If you want to find Chinese restaurants with exactly three dollar signs: 
--7)Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘Candy’ in it. Can you find it for him using a query? 
--8)Let’s order delivery to the house! Find all the close-by spots in Midtown, Downtown or Chinatown 
--9)Find all the health grade pending restaurants (empty values). 
--10)Create a Top 4 Restaurants Ranking based on reviews

SELECT * FROM nomnom;
SELECT * FROM nomnom GROUP BY NAME ORDER BY NAME DESC;

SELECT NEIGHBOURHOOD FROM nomnom GROUP BY NEIGHBOURHOOD;
SELECT CUISINE FROM nomnom GROUP BY CUISINE;
SELECT * FROM nomnom WHERE CUISINE = 'Chinese' GROUP BY NAME;
SELECT * FROM nomnom WHERE REVIEW>=4 GROUP BY NAME;
SELECT * FROM nomnom WHERE CUISINE= 'Italian' AND PRICE= '$$$' GROUP BY NAME;
SELECT * FROM nomnom WHERE CUISINE= 'Chinese' AND PRICE= '$$$' GROUP BY NAME;
SELECT * FROM nomnom WHERE NAME LIKE '%Candy%' GROUP BY NAME;
SELECT * FROM nomnom WHERE NEIGHBOURHOOD='MidTown' OR NEIGHBOURHOOD='DownTown' OR NEIGHBOURHOOD='ChinaTown' GROUP BY NAME ORDER BY NAME DESC; 
SELECT * FROM nomnom WHERE HEALTH=' ';

DROP TABLE nomnom;
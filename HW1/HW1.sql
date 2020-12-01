CREATE TABLE Edges(Source INT, Destination INT); 
INSERT INTO Edges 
VALUES (10, 5), (6, 25), (1, 3), (4, 4);

SELECT * FROM Edges;

SELECT E.Source FROM Edges AS E; 


SELECT * FROM Edges AS E WHERE E.Source > E.Destination; 

INSERT INTO Edges VALUES ('-1', '2000');

CREATE TABLE MyRestaurants(Name VARCHAR(100), Type VARCHAR(100), Distance INT, Last_Visit VARCHAR(100), Like_Or_Not INT);

INSERT INTO MyRestaurants VALUES ('KFC', 'Fast Food', '100', '2020-12-05', 1);
INSERT INTO MyRestaurants VALUES ('Burger King', 'Fast Food', '90', '2020-12-01', 0);
INSERT INTO MyRestaurants VALUES ('Sushiro', 'Sushi', '50', '2020-09-05', 1);
INSERT INTO MyRestaurants VALUES ('Formosa Chang ', 'Taiwanese Food', '20', '2019-06-25', NULL);
INSERT INTO MyRestaurants VALUES ('Taco Bell', 'Fast Food', '200', '2018-11-07', 0);
INSERT INTO MyRestaurants VALUES ('ABC', 'Fast Food', '10', '2018-11-07', 0);
INSERT INTO MyRestaurants VALUES ('Dummy Dount', 'Dount', '10', '2018-10-07', 1);

.header on
.mode csv
SELECT * FROM MyRestaurants; 

.header on
.separator "|"
.mode list
SELECT * FROM MyRestaurants; 

.header on
.width 15 15 15 15 15
.mode col
SELECT * FROM MyRestaurants; 


.header off
.mode csv
SELECT * FROM MyRestaurants; 

.header off
.separator "|"
.mode list
SELECT * FROM MyRestaurants; 

.header off
.width 15 15 15 15 15
.mode col
SELECT * FROM MyRestaurants; 


.header on
SELECT R.Name, R.Distance FROM MyRestaurants AS R WHERE R.Distance <= 20 ORDER BY R.Name ASC; 


.header on
SELECT * FROM MyRestaurants AS R WHERE R.Like_Or_Not == 1 AND round((julianday(Date('now')) - julianday(R.Last_Visit))/30) > 3.0; 

.header on
SELECT * FROM MyRestaurants AS R WHERE R.Like_Or_Not == 1 AND round((julianday(Date('now')) - julianday(R.Last_Visit))/30) > 3.0; 

SELECT * FROM MyRestaurants AS R WHERE R.Distance <= 10; 
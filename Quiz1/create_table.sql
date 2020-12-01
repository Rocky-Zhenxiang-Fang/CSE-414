PRAGMA foreign_keys=ON;

CREATE TABLE Team (id INT PRIMARY KEY, name VARCHAR(50), organization VARCHAR(50)); 
CREATE TABLE Contestant(id INT PRIMARY KEY, tid INT REFERENCES Team(id), name VARCHAR(50), birthyear VARCHAR(50));
CREATE TABLE Meet(id INT PRIMARY KEY, name VARCHAR(50), year INT); 
CREATE TABLE Event (id INT PRIMARY KEY, mid INT REFERENCES Meet(id), name VARCHAR(50)); 
CREATE TABLE Performance(eid INT REFERENCES Event(id), cid INT REFERENCES Contestant(id), time INT, won INT); 




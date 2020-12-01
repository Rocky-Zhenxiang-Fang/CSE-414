CREATE TABLE InsuranceCo (phone INT, name VARCHAR(30) PRIMARY KEY);

CREATE TABLE Person (ssn INT PRIMARY KEY, name VARCHAR(30)); 

CREATE TABLE Vehicle (
	licensePlate VARCHAR(30), 
	year INT, 
	maxLiability REAL, 
	insurance_name VARCHAR(30) REFERENCES InsuranceCo(name),
	owner_ssn INT REFERENCES Person (ssn)
	); 

CREATE TABLE Driver(
    driverID INT,
    ssn INT PRIMARY KEY REFERENCES Person(ssn)
	);

CREATE TABLE ProfessionalDriver(
	ssn INT PRIMARY KEY REFERENCES Person(ssn),
	medicalHistory VARCHAR(100)
	); 

CREATE TABLE NonProfessionalDriver(ssn INT PRIMARY KEY REFERENCES Person(ssn));

CREATE TABLE Truck(
	licensePlate VARCHAR(30) PRIMARY KEY REFERENCES Vehicle(licensePlate)
	operator_ssn INT REFERENCES ProfessionalDriver(ssn)
	capacity INT);

CREATE TABLE Car(
	licensePlate VARCHAR(30) PRIMARY KEY REFERENCES Vehicle(licensePlate)
	make VARCHAR(50));

CREATE TABLE Dirves(
	car_licensePlate VARCHAR(30) REFERENCES Car(licensePlate), 
	driver_ssn INT REFERENCES  NonProfessionalDriver(ssn), 
	PRIMARY KEY(car_licensePlate, driver_ssn));


-- b.
-- Insures is stores as an attribute in the vehicle table. 
-- Since it is a many to one relationship, the relationship can be store at the many-side and use foriegn key to refer the one side. 

-- c.
-- dirves is many to many relationship, operates is a many to one relationship. 
-- like b., a many to one relationship can be store in an attribute in the many-side that references the one side. So operates is stored at "Operator" in "Truck"
-- For a many to many relationship, another table "Drives" is created to record each pair of (driver, car).

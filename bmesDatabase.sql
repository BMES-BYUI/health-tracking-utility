-- A database for the BMES health data collection application

-- CREATE DATABASE bmes

-- Drop table every time we run
Drop Table gender, student CASCADE;

-- Create gender table
CREATE TABLE gender(
id 	SERIAL	 PRIMARY KEY
,name VARCHAR(10)	
);

-- Seed gender table
INSERT INTO gender 
(name)
VALUES
('male'),
('female');


-- Create student table 
CREATE TABLE student(
id 				SERIAL   		PRIMARY KEY
,name_first		VARCHAR(100)
,name_last		VARCHAR(100)
,birthday		DATE
,byui_id		INT
,gender			INT      		REFERENCES gender(id)	
);

-- Create visit table
CREATE TABLE visit(
id 				SERIAL 			PRIMARY KEY
,student_id		INT 			REFERENCES student(id)
,);
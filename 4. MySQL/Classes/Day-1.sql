-- This is a single-line Comment

/*
This
is
a
Multi-line
Comment 
*/

-- Creating a DataBase
CREATE DATABASE aug17;
CREATE DATABASE d2;

-- Deleting the DataBase
DROP DATABASE d2;

-- Show the DataBases
SHOW DATABASES;

-- Selecting a DataBase
USE aug17;

-- Creating a Table
CREATE TABLE emp(emp_id INT, emp_name VARCHAR(50), salary INT); 

-- Reading Table
SELECT * FROM emp;

-- Describing a Table
DESC emp;

-- Inserting single row into the Table
INSERT into emp values(1, "Prajwal", 34000);
SELECT * FROM emp;

-- Inserting multiple Values
INSERT into emp values(2, "Abhinas", 45000),(3,"Isha",50000),(4,"Subhaman",120000);
SELECT * FROM emp;
INSERT into emp values(1, "Prajwal", 34000);
SELECT * FROM emp;

-- Constraints
-- Contraints are the rules that we apply to control what kind of data cane be stored
CREATE TABLE Students(
	student_id int PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(100) UNIQUE,
    age int CHECK( age >= 20),
    gender char(1) DEFAULT 'M'
);
SELECT * FROM Students;
DESC Students;

INSERT into Students 
(student_id, first_name, last_name, email, age)
values(1, 'Prajwal', 'Purohit', 'prajwal.purohit@gmail.com',22);
SELECT * FROM Students;

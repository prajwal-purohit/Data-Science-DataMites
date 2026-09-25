INSERT into Students 
values(2, 'Isha', 'Purohit', 'ishapurohit07@gmail.com',22,DEFAULT);
SELECT * FROM Students;

INSERT into Students 
values(3, 'Subhashree', 'Purohit', 'subhashreepurohit33@gmail.com',23,'F');
SELECT * FROM Students;

/*
INSERT into Students 
values(3, 'Puneet', 'Purohit', 'puneetpurohit33@gmail.com',23,'F');
SELECT * FROM Students;
/*
-- As student_id is our primary key and it is dulpicate in this case that's why error is showing.

/*
INSERT into Students 
(student_id, last_name, email, age, gender)
values(4, 'Purohit', 'wwepurohit33@gmail.com',63,'M');
SELECT * FROM Students;
*/
-- As first_name is NOT NULL and it is NULL in this case that's why error is showing.

INSERT into Students 
values(5, 'Nini','Purohit', 'ninipurohit85@gmail.com',63,'');
SELECT * FROM Students;

/*
INSERT into Students 
values(4, 'Varun','H', 'h@gmail.com',17,'M');
SELECT * FROM Students;
*/

CREATE TABLE patients(
	p_id int PRIMARY KEY,
    p_name varchar(50) NOT NULL,
    age tinyint CHECK( age > 18),
    gender char(1) DEFAULT 'F',
    contact bigint unique
);
SELECT * FROM patients;
DESC patients;

INSERT into patients 
values(1, 'AAA',20,DEFAULT,1999999999999),(2, 'BBB',21,'F',1111111111111),(3, 'CCC',22,'M',12222222222),(4, 'DDD',23,'M',13333333333333);
SELECT * FROM patients;

-- Update
UPDATE patients set gender = 'M' where p_id = 1;
SELECT * FROM patients;

-- Delete
DELETE from patients where p_id = 4;
SELECT * FROM patients;

DELETE from patients where p_id = 2 OR p_id = 3;
SELECT * FROM patients;

INSERT into patients 
values(2, 'BBB',21,'F',1111111111111),(3, 'CCC',22,'M',12222222222),(4, 'DDD',23,'M',13333333333333);
SELECT * FROM patients;

DELETE from patients where p_id in(2,3,4);
SELECT * FROM patients;

DELETE FROM patients;
set sql_safe_updates = 0;
SELECT * FROM patients;

-- Truncate
-- Deleting entire data
TRUNCATE TABLE patients;
SELECT * FROM patients;

INSERT into patients 
values(1, 'AAA',20,DEFAULT,1999999999999),(2, 'BBB',21,'F',1111111111111),(3, 'CCC',22,'M',12222222222),(4, 'DDD',23,'M',13333333333333);
SELECT * FROM patients;

-- Drop 
-- Delete entire data and structure i.e, TABLE
DROP TABLE patients;
SELECT * FROM patients;



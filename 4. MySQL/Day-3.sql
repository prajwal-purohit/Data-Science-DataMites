USE aug17;
CREATE TABLE patients(
	p_id int PRIMARY KEY,
    p_name varchar(50) NOT NULL,
    age tinyint CHECK( age > 18),
    gender char(1) DEFAULT 'F',
    contact bigint unique
);

INSERT into patients 
values(1, 'AAA',20,DEFAULT,1999999999999),(2, 'BBB',21,'F',1111111111111);
SELECT * FROM patients;

SELECT * FROM patients;
DESC patients;

-- Alter
alter table patients add BP INT NOT NULL;
SELECT * FROM patients;

-- Delete a column
alter table patients drop column gender;
SELECT * FROM patients;

-- Change Column DataType
alter table patients modify BP varchar(20);
desc patients;

-- Change Column Name
alter table patients rename column BP to p_BP;
desc patients;
SELECT * FROM patients;

-- Change a Table Name
alter table patients rename to hosp_patients;
SELECT * FROM hosp_patients;

-- Titanic
-- Select
SELECT * FROM titanic;
SELECT name, fare, cabin, age FROM titanic;
SELECT embarked FROM titanic;

-- distinct (Unique Values)
SELECT DISTINCT(sibsp) FROM titanic;
SELECT DISTINCT(embarked)FROM titanic;

-- Aliases
SELECT embarked as station FROM titanic;
SELECT * FROM titanic;

-- Where
SELECT * FROM titanic WHERE embarked = 'Q';
SELECT * FROM titanic WHERE embarked in ('Q','S');

SELECT survived, age, pclass FROM titanic WHERE age > 60;
SELECT survived, age, pclass FROM titanic WHERE age > 60 and survived = 1;

SELECT survived, name, ticket, fare FROM titanic WHERE fare < 5;

SELECT fare, ticket, age, embarked FROM titanic WHERE age <= 10 AND embarked = 'C';

SELECT fare, ticket, age, embarked FROM titanic WHERE age <= 10 OR embarked = 'C';

SELECT * FROM titanic WHERE NOT (age) <= 10;

-- Assignments
SELECT DISTINCT parch FROM titanic;
SELECT DISTINCT pclass FROM titanic;

SELECT * FROM titanic;

SELECT survived FROM titanic where survived = 1;
SELECT survived FROM titanic where survived = 1 and  gender = 'male';
SELECT survived FROM titanic where survived = 1 and  gender = 'female';


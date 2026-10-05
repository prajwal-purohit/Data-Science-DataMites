-- Order By

SELECT * FROM titanic;
SELECT * FROM titanic ORDER BY age;
SELECT * FROM titanic ORDER BY age DESC;
SELECT age, name, embarked FROM titanic where age > 70 ORDER BY age;
SELECT age, name, embarked FROM titanic where age > 70 ORDER BY name DESC;

-- Highest Fare
SELECT age, name, fare FROM titanic ORDER BY fare DESC;

-- Lowest Fare
SELECT age, name, fare FROM titanic ORDER BY fare;

-- Is NULL or Is Not NUll

SELECT * FROM titanic WHERE age is NULL;
SELECT * FROM titanic WHERE age is not NULL;

-- Limit

SELECT age, name, embarked FROM titanic where age > 70;
SELECT age, name, embarked FROM titanic where age >70 LIMIT 2;
SELECT age, name, embarked FROM titanic where age > 70 ORDER BY age LIMIT 5;
SELECT age, name, embarked FROM titanic where age > 65 ORDER BY age DESC;
SELECT * FROM titanic where age > 65 ORDER BY age DESC LIMIT 1;
SELECT * FROM titanic ORDER BY age DESC LIMIT 1;
SELECT * FROM titanic ORDER BY fare LIMIT 1;
SELECT * FROM titanic where gender = 'female' ORDER BY age DESC LIMIT 1;
SELECT * FROM titanic where embarked ='c' ORDER BY age DESC LIMIT 1;

-- in

SELECT * FROM titanic where embarked in ('S', 'C');
SELECT DISTINCT(sibsp) FROM titanic;
SELECT * FROM titanic where sibsp in (0, 1, 4);
SELECT DISTINCT(pclass) FROM titanic;
SELECT * FROM titanic where Pclass = 3 AND embarked = 's';

-- between
SELECT * FROM titanic where age BETWEEN 50 and 65;
SELECT * FROM titanic where fare BETWEEN 10 and 50;

-- like 
SELECT * FROM titanic where name like 'S%';
SELECT * FROM titanic where name like '%d';
SELECT * FROM titanic where name like 'h%d';
SELECT * FROM titanic where name like 'm_';

-- Aggregation Functions
-- count
SELECT count(age) FROM titanic;
SELECT count(age) FROM titanic where age = 30;
SELECT count(embarked) FROM titanic WHERE embarked = 'q';

-- sum
SELECT sum(age) FROM titanic where age = 30;
SELECT sum(age) FROM titanic where embarked = 'q';

-- Average
SELECT avg(age) FROM titanic;

-- Minimum
SELECT min(age) FROM titanic;

-- Maximum
SELECT max(age) FROM titanic;

select avg(fare) FROM titanic where embarked in ('s','q');

-- Group By
SELECT DISTINCT(embarked) from titanic;
SELECT embarked, avg(fare) from titanic GROUP BY embarked;

select embarked, count(embarked) from titanic group by embarked;


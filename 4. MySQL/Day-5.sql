SELECT distinct(pclass) from titanic;

SELECT pclass, min(fare) from titanic GROUP BY pclass;

SELECT pclass, max(fare) from titanic GROUP BY pclass;

SELECT pclass, avg(fare) from titanic GROUP BY pclass;

-- Having
SELECT pclass, avg(fare) from titanic GROUP BY pclass HAVING avg(fare)>50;

SELECT gender, count(gender) from titanic WHERE survived = 1 GROUP BY gender;
SELECT * FROM titanic;

SELECT sibsp, avg(fare) from titanic GROUP BY sibsp;

SELECT sibsp, avg(fare) from titanic GROUP BY sibsp HAVING avg(fare)> 35 ORDER BY sibsp;

SELECT embarked, max(age) as max_age from titanic GROUP BY embarked HAVING max_age > 40;


-- Sub-Queries
SELECT * FROM titanic;

-- SELECT MIN(age) FROM titanic;
-- SELECT * FROM titanic WHERE age = 0;

-- Now write subquery in single line
SELECT * FROM titanic WHERE age = (select min(age) FROM titanic);

SELECT * FROM titanic WHERE fare = (select min(fare) FROM titanic);

SELECT MIN(fare) FROM titanic;
SELECT COUNT(fare) FROM titanic WHERE fare = (SELECT MIN(fare) FROM titanic);


-- Joins
CREATE TABLE employee(
emp_id varchar(20) PRIMARY KEY,
ename varchar(10) not null,
salary int check(salary<100000),
dep_id varchar(10)
);

CREATE TABLE department(
dep_id varchar(20) PRIMARY KEY,
dep_name varchar(20)
);

SELECT * FROM employee;
SELECT * FROM department;

-- Adding the Relationship
alter table employee add constraint fk_employee_department
foreign key (dep_id) references department(dep_id);

select * from department;

insert into department(dep_id, dep_name) values
('D01', 'HR'),
('D02', 'IT'),
('D03', 'Sales'),
('D04', 'Finance'),
('D05', 'Marketing');

insert into employee(emp_id, ename, salary, dep_id) values
('E101', 'Priya',45000,'D01'),
('E102', 'Balu',55000,'D02'),
('E103', 'Raju',65000,'D02'),
('E104', 'Leela',50000,'D03'),
('E105', 'Anil',75000,'D03'),
('E106', 'Sri',60000,'D01');

select * from department;
select * from employee;



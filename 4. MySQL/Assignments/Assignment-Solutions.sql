CREATE DATABASE Assignments;
USE Assignments;

-- Creating a Table employees
CREATE TABLE  employees(employee_id int primary key, employee_name varchar(50) not null, department_id int, manager_id int, salary int, city varchar(50), hire_date date);
INSERT INTO employees (employee_id, employee_name, department_id, manager_id, salary, city, hire_date) value
(101, 'Alice', 10, 201, 60000,'Hyderabad','2022-01-15'),
(102,'Bob', 20, 202, 55000, 'Bangalore', '2021-06-20'),
(103, 'Charlie', 10, 201, 70000, 'Hyderabad', '2020-03-10'),
(104, 'David', 30, 203, 50000, 'Mumbai', '2023-02-18'),
(105, 'Emma', 40, 204, 65000, 'Delhi', '2022-11-05'),
(106, 'Frank', NULL, 201, 45000, 'Hyderabad', '2024-01-10'),
(107, 'Grace', 20, 202, 58000, 'Bangalore', '2023-07-12'),
(108, 'Henry',30, 203, 52000, 'Mumbai', '2021-09-25'),
(109, 'Irene', 10, 201, 72000,'Hyderabad', '2019-05-14'),
(110, 'Jack', 50, NULL, 48000, 'Chennai', '2024-04-01');
SELECT * FROM employees;
drop table employees;

-- Creating a Table departments
CREATE TABLE  departments(department_id int primary key, department_name varchar(50) not null, location varchar(50), budget int);
INSERT INTO departments (department_id, department_name, location, budget) value
(10, 'Data Science', 'Hyderabad',500000),
(20, 'HR', 'Bangalore',300000),
(30, 'Finance', 'Mumbai',400000),
(40, 'Sales', 'Delhi',450000),
(50, 'Marketing', 'Chennai',350000),
(60, 'IT', 'Pune',600000);
SELECT * FROM departments;

-- Creating a Table projects
CREATE TABLE  projects(project_id int primary key, project_name varchar(50) not null, department_id int, budget int);
INSERT INTO projects (project_id, project_name, department_id, budget) value
(1, 'AI Platform', 10, 250000),
(2, 'Recruitment System', 20, 150000),
(3, 'Fraud Detection', 30, 200000),
(4, 'Sales Dashboard', 40, 180000),
(5, 'Marketing Campaign', 50, 120000),
(6, 'Cloud Migration', 60, 300000);
SELECT * FROM projects;

-- Section A — Basic SQL

-- Q1. Display all employees.
SELECT * FROM employees;

-- Q2. Display only employee name and salary.
SELECT employee_name, salary FROM employees;

-- Q3. Display employees who earn more than ■60,000.
SELECT * FROM employees WHERE salary > 60000;

-- Q4. Display employees who live in Hyderabad.
SELECT * FROM employees where city = 'Hyderabad';

-- Q5. Display employees whose salary is between ■50,000 and ■70,000.
SELECT * FROM employees where salary between 50000 and 70000;

-- Q6. Display employees who live in either Hyderabad or Bangalore.
SELECT * FROM employees where city in ('Hyderabad', 'Bangalore');

-- Q7. Display employees whose names start with the letter 'A'.
SELECT * FROM employees where employee_name like'A%';

-- Q8. Display employees whose names end with the letter 'e'.
SELECT * FROM employees where employee_name like'%e';

-- Q9. Display all employees sorted by salary from highest to lowest.
SELECT * FROM employees ORDER BY salary DESC;

-- Q10. Display the top 3 highest-paid employees.
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- Section B — Aggregate Functions

-- Q11. Find the total number of employees.
SELECT count(employee_id) from employees;

-- Q12. Find the total salary of all employees.
SELECT sum(salary) from employees;

-- Q13. Find the average employee salary.
SELECT avg(salary) from employees;

-- Q14. Find the highest salary.
SELECT max(salary) from employees;

-- Q15. Find the lowest salary.
SELECT min(salary) from employees;

-- Q16. Find the number of employees living in Hyderabad.
SELECT count(employee_id) from employees where city = 'Hyderabad';

-- Q17. Find the total salary paid to employees living in Mumbai.
SELECT sum(salary) from employees where city = 'Mumbai';

-- Q18. Find the average salary of employees living in Bangalore.
SELECT avg(salary) from employees where city = 'Bangalore';

-- Section C — GROUP BY and HAVING
SELECT * FROM departments;
SELECT * FROM employees;

-- Q19. Find the number of employees in each department.
SELECT department_id, count(employee_id) from employees GROUP BY department_id;

-- Q20. Find the average salary in each department.
SELECT department_id, avg(salary) from employees GROUP BY department_id;

-- Q21. Find the maximum salary in each department.
SELECT department_id, max(salary) from employees GROUP BY department_id;

-- Q22. Find the minimum salary in each department.
SELECT department_id, min(salary) from employees GROUP BY department_id;

-- Q23. Find the total salary paid by each department.
SELECT department_id, sum(salary) from employees GROUP BY department_id;

-- Q24. Find the number of employees in each city.
SELECT city, count(employee_id) from employees GROUP BY city;

-- Q25. Find the average salary for each city.
SELECT city, avg(salary) from employees GROUP BY city;

-- Q26. Find cities having more than 2 employees.
SELECT city, count(employee_id) from employees GROUP BY city HAVING count(employee_id) >2;

-- Q27. Find departments where the average salary is greater than ■60,000.
SELECT city, avg(salary) from employees GROUP BY city HAVING avg(salary) >60000;

-- Q28. Find departments where the total salary is greater than ■150,000.
SELECT city, sum(salary) from employees GROUP BY city HAVING sum(salary) >150000;

-- Section D — Constraints

-- Q29. Create the students table using the following constraints: student_id PRIMARY KEY, student_name
-- NOT NULL, email UNIQUE, age CHECK (age >= 18), and city DEFAULT 'Hyderabad'.
CREATE TABLE students(student_id int PRIMARY KEY, student_name varchar(50) NOT NULL, email varchar(50) UNIQUE, age int CHECK (age >= 18), city varchar(50) DEFAULT 'Hyderbad');
SELECT * FROM students;
DESC students;

-- Q30. Insert a valid student record into the students table.
INSERT INTO students (student_id, student_name, email, age) value
(048, 'Prajwal', 'prajwal.purohit@gmail.com',22);
SELECT * FROM students;

-- Q31. Attempt to insert two students with the same student_id. Identify the constraint that is violated.
INSERT INTO students (student_id, student_name, email, age) value
(048, 'Prajwal', 'prajwal.purohit@gmail.com',22),
(048, 'Subhashree', 'subhashreemohanty777@gmail.com',23);
-- student_id is PRIMARY KEY.

-- Q32. Attempt to insert a student without providing student_name. Identify what happens.
INSERT INTO students (student_id, email, age) value
(018, 'prajwal.purohit@gmail.com',22);
-- NOT NULL for student_name

-- Q33. Attempt to insert a student whose age is 15. Identify the constraint that is violated.
INSERT INTO students (student_id, student_name, email, age) value
(001, 'Isha', 'ishapurohit07@gmail.com',15);
-- check age >= 18 constraint

-- Q34. Insert a student without specifying city. Verify the value assigned by the DEFAULT constraint.
INSERT INTO students (student_id, student_name, email, age) value
(007, 'Subhman', 'subhamanmohanty1983@gmail.com',21);
SELECT * FROM students;


-- Section E — JOINs

-- Q35. Display employee name and department name.

-- Q36. Display employee name, salary, department name, and department location.

-- Q37. Display all employees, including employees who do not belong to any department.

-- Q38. Display all departments, including departments that have no employees.

-- Q39. Find employees working in the Data Science department.

-- Q40. Find employees working in departments located in Hyderabad.

-- Q41. Find the number of employees in each department using JOIN and GROUP BY. Include departments
-- with zero employees.

-- Q42. Find the average salary for each department using JOIN and GROUP BY.




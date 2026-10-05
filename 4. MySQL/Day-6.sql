-- Inner Join
Select e.emp_id, e.ename, e.salary, e.dep_id, d.dep_name
from employee e inner join department d
on e.dep_id = d.dep_id;
select * from department;
select * from employee;

-- Left Join
Select e.emp_id, e.ename, e.salary, e.dep_id, d.dep_name
from employee e left join department d
on e.dep_id = d.dep_id;

-- Right Join
Select e.emp_id, e.ename, e.salary, d.dep_id, d.dep_name
from employee e right join department d
on e.dep_id = d.dep_id;

-- Outer Join
Select e.emp_id, e.ename, e.salary, e.dep_id, d.dep_name
from employee e left join department d
on e.dep_id = d.dep_id 
union
Select e.emp_id, e.ename, e.salary, d.dep_id, d.dep_name
from employee e right join department d
on e.dep_id = d.dep_id;

-- Cross Join
Select e.emp_id, e.ename, e.salary, d.dep_id, d.dep_name
from employee e 
cross join department d;

-- Self Join
Select 
A.emp_id as Emp1_id, A.ename as Emp1_name,
B.emp_id as Emp2_id, B.ename as Emp2_name,
A.dep_id
from employee A 
join employee B
on A.dep_id = B.dep_id
where A.emp_id < B.emp_id;


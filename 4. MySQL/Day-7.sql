-- Window Functions
create database windows;
use windows;
select * from employee;

-- Row Number
select *,
row_number() over (partition by prevexperience order by salary desc) 
as row_num from employee;

-- Rank
select *,
rank() over (partition by prevexperience order by salary desc) 
as rnk from employee;

-- Dense Rank
select *,
dense_rank() over (partition by prevexperience order by salary desc) 
as d_rank from employee;

-- All
select *,
row_number() over (partition by prevexperience order by salary desc) 
as row_num,
rank() over (partition by prevexperience order by salary desc) 
as rnk,
dense_rank() over (partition by prevexperience order by salary desc) 
as d_rank
from employee;

-- Lag
select salary, prevexperience, lag(salary)
over (partition by prevexperience order by salary desc) 
as lg from employee;

select salary, prevexperience, lag(salary,2)
over (partition by prevexperience order by salary desc) 
as lg from employee;

-- Lead
select salary, prevexperience, lead(salary)
over (partition by prevexperience order by salary desc) 
as ld from employee;

select salary, prevexperience, lead(salary,2)
over (partition by prevexperience order by salary desc) 
as ld from employee;


create DATABASE primyee;
use primyee;
CREATE TABLE prajwal (
    EmployeeID INT,
    Name VARCHAR(100),
    Department VARCHAR(50),
    JobTitle VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    Salary INT,
    Experience INT,
    Location VARCHAR(50),
    PerformanceRating INT
);
select *from prajwal;
select Name , Department from prajwal
where Salary > 9000
limit 9;
select Department , Name from prajwal
where Location ='pune'and Salary > 95000
limit 5
;
select Name , Salary from prajwal 
where Age='female' or 
salary >99000;
select avg(Salary) from prajwal;
 select Name , Age from prajwal 
 order by Age desc
 limit 7;
 select Name, Department , Age , Gender from prajwal
 where Salary <(select avg(Salary) from prajwal)
 order by Age desc
 limit 2;
-- disply top 5 employee thoes hve high salary 
select Name , Salary from prajwal 
order by Salary desc 
limit 5;

-- display employee thoes have age > 45
select Name  , Department , Location , Age from prajwal
where 
Age > 45 and Location = 'pune'  
order by Age desc 
limit 5;
use hr_dataset_10000;
use primyee;
select * from prajwal;

-- total 
SELECT COUNT(*) AS total_employees
FROM prajwal
where department = 'HR';


select count(*) as total_employee from prajwal;
select avg (Salary) from prajwal;
select avg(Age) from prajwal;

select Name , Age  from prajwal
where Salary>9902;

-- group by queries 
select Department from prajwal
group by Department;
use primyee;

select  Name as  employeee
from prajwal;
select count(*) from prajwal
where Department = 'Marketing';

select count(*) from prajwal
where Department = 'HR';

-- Find employees whose salary is higher than their department's average salary.
select Salary , Name  from prajwal 
where (select avg(Salary) from prajwal )< Salary
limit 4;

--- sum of salary 
select sum(Salary) from prajwal;

-- total employee , salary , and total emplyee\
select sum( Salary) as total_salary, 
Avg (Salary)as average_total,
count(*) as total_employee
 from prajwal;

select * from prajwal;

-- Count male and female employees.
select count( Male ) from prajwal;


-- lowest salary 
select  Salary 
as lowest_salary from prajwal
order by Salary desc
limit 1;
select  Salary 
as high_salary from prajwal
order by Salary 
limit 1;



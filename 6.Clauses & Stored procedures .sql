-- ------------------------------------------Clauses-------------------------------------------------------------------------------------

-- -------------------------------------------Order by  >> sort data in asc or desc , by default asc order

select * from employee
order by e_salary desc

-- ---------------------------------------------------Top clause >> fetch top N records

select top (3) * from employee

select top(3) * from employee
order by e_age desc

------------------------------------------------ Group by  >> aggreated result with respect to a group

select avg(e_salary), e_gender from employee
group by e_gender

select avg(e_age), e_dep from employee
group by e_dep
order by AVG(e_age) desc

------------------------------------------------ Having clause >> used in combination of groupby statment to imppose conditions ,used bcz where cannot be used.

select e_dep,avg(e_salary) from employee
group by e_dep
having avg(e_salary)>100000


---- ---------------------------------------------Stored Procedures --------------------------------------------------------------

-- >>it is a prepared sql code which we can store and reuse 

-- -------------------------------------------without parameter------------------------------------------------------------------------------
create procedure e_details
as 
select * from employee
go

exec e_details -- call the procedure

create procedure emp_age
as 
select e_age from employee
go
exec emp_age

-- --------------------------------------------------------with parameter------------------------------------------------------------------
create procedure emp_gender @gender varchar(20)
as
select * from employee
where e_gender=@gender
go

exec emp_gender @gender = 'male'


exec emp_gender @gender = 'female'

--------------------------------------Views---------------------------------------------------------------------------------

-- Virtual table based on sql statements---
-- Create & drop views

create view female_emp 
as
select * from employee
where e_gender='female'


select  * from female_emp

drop view female_emp; -- to drop view
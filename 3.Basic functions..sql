--__ Basic Function___
--1. Agg functions
--min()

select min(e_age) from employee;
select min(e_salary) from employee;

-- max()
select max(e_age) from employee;
select max(e_salary) from employee;

--Count()
select count(*) 
from employee
where e_gender ='male';

-- Sum()
select sum(e_salary) from employee;

-- Avgerage()
select Avg(e_salary) from employee
select Avg(e_age) from employee

-- string functions

--ltrim() -- to trim spaces

select '           vvv'

select ltrim( '           vvv')  -- exct both to know diff

--  Lower() to lower case

select 'THIS IS SQL'

select lower ('THIS IS SQL')

-- Upper () to upper case

select 'hello'
select upper('hello')

--Reverse() -- reverse the strings

select 'I LOVE YOU'
select REVERSE('I LOVE YOU')

-- Substring() -- extract some part of text
select 'this is sparta'

select SUBSTRING('this is sparta',9,6)
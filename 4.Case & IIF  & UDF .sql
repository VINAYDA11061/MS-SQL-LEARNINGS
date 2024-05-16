--Case statements

select
case 
when 10>20 then '10 is greater'
when 10<20 then '10 is less'
else '10 is equal to 20'
end


select *, grade=
case when e_salary <90000 then 'A'
when e_salary <12000 then 'B'
else 'C'
end
from employee


--- iIF 

select IIF (10<20, '10 is greater','10 is smaller')

select  *, iif(e_age>30, 'old employee' , 'young employee') as e_generation from employee

--- User defined functions
--1. scalar value & 2. table value

--1.scalar
create function add_five(@num  as int)
returns int
as 
begin 
return (@num+5)
end

select dbo.add_five(100)

---2.table valued function

select * from employee

create function select_gender(@gender as varchar(20))
returns table
as 
return( select * from employee where e_gender=@gender)

select * from dbo.select_gender('male')
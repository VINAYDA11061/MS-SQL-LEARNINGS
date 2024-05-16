create database New -- creates database
use New -- activate database
-- drop database New ; to drop database

/* 
Data Type -- Numerical, character, Date 
Constrains -- Not Null, default, Unique, Primary Key (unique+Not null)
Operators -- And, Not, Or, like , between.
Create, insert, select & select distinct statements

*/

-- create table
create table employee (
e_id int not null
, e_name varchar(20)
, e_salary int
, e_age int
, e_gender varchar(10)
,e_dep varchar(20)
, primary key(e_id)
);

--- insert values into table
insert into employee (e_id,e_name,e_salary,e_age,e_gender,e_dep)
values(1,'Sam',95000,45,'male', 'operations'),
	  (2,'Bob',80000,21,'male','support'),
      (3,'Anne',125000,25,'female','analytics'),
      (4,'Julia',73000,30,'female','analytics'),
      (5,'Matt',159000,33,'male','sales'),
      (6,'Jeff',112000,27,'male','operations')

-- select statement
select * from employee; -- all columns
select e_name, e_age from employee; -- specific columns

-- Select distinct statement
select distinct e_gender from employee;

--- where clause

select * from employee 
--where e_age>30;
--where e_gender ='female';

-- And operator
select * from employee
where e_age<30 and e_gender='male'

-- Or operator
select * from employee
--where e_dep='operations' or e_dep='analytics';
where e_age>30 or e_salary >10000;

-- Not operator
select * from employee
--where not e_gender='female';
where not e_age<30;

-- like operator( wildcard symbols '%' for 0,1 & more charcters and '_' - for single character)

select * from employee
--where e_name like 'j%'
where e_age like '3_';

-- Between operators 

select * from employee
where e_age between 20 and 35

-- Union & union All
-- union -- to combine result set of two or more select statements

/*
create table student1(
s_id int,
s_name varchar(20),
s_marks int)

insert into student1(s_id,s_name,s_marks)
values(1,'sam',45),
(2,'Bob',87),
(3,'Anne',73),
(4,'Julia',92)

create table student2(
s_id int,
s_name varchar(20),
s_marks int)

insert into student2(s_id,s_name,s_marks)
values
(2,'Bob',87),
(3,'Anne',73),
(5,'Matt',65)
*/

select * from student1
union select * from student2

-- Union all == returns all rows of both table including duplicates

select * from student1
union all select * from student2

-- Except operator -- combine 2 selct statemtns and returns unique record from left part query which are not part of left query.

select * from student1 
except
select * from student2

-- Intersect operator  >> combines two select  statements and returns common reocrds from two  select statements

select * from student1
intersect 
select * from student2

-- delete statment

delete from employee
where e_age =33


delete from employee
where e_name='sam'

select * from employee

-- Truncate statement -- delete records from table but structure remains same.
truncate table employee

-- update == modify existing records

update employee
set e_age = 42
where e_name='sam'

update employee
set e_dep='Tech'
where e_gender='female'
select * from employee

update employee
set e_salary = 50000

--- Update using Join

update employee
set e_age=e_age+10
from employee as e
join department on e_dep = department.d_name
where d_location ='NewYork'

select * from employee

--- Delete using join

delete from employee
from employee as e
join department on e.e_dep = department.d_name
where d_location = 'NewYork'

select * from employee

--- Alter table \ add,delete or modify columns in an existing table

--add columns

alter table employee
add e_dob date;

select * from employee

-- drop column
alter table employee
drop column e_dob

select * from employee

-- temporary tables -- are created in tempDB and deleted as soon as session is terminated used to store temp data.
-- #  represents temp table
create table #student(
student_id int,
student_name varchar(20));

insert into #student (student_id,student_name)
values(1,'vinay'),
   	(2,'vishal')

select * from #student

-- Merge : helps to perfrom insert , update & delete.
		-- Target & source table
/*
create table e_source(
e_id int not null
, e_name varchar(20)
, e_salary int
, e_age int
, e_gender varchar(10)
,e_dep varchar(20)
, primary key(e_id)
);
insert into e_source(e_id,e_name,e_salary,e_age,e_gender,e_dep)
values(1,'Sam',93000,40,'male', 'operations'),
	  (2,'Bob',80000,21,'male','support'),
      (3,'Anne',13000,25,'female','analytics'),
      (6,'Jeff',112000,27,'male','operations'),
	  (7,'Adam',100000,28,'male','operations'),
	  (8,'Priya',85000,37,'female','operations')


	  create table e_target(
e_id int not null
, e_name varchar(20)
, e_salary int
, e_age int
, e_gender varchar(10)
,e_dep varchar(20)
, primary key(e_id)
);
insert into e_target(e_id,e_name,e_salary,e_age,e_gender,e_dep)
values(1,'Sam',95000,45,'male', 'operations'),
	  (2,'Bob',80000,21,'male','support'),
      (3,'Anne',125000,25,'female','analytics'),
      (4,'Julia',73000,30,'female','analytics'),
	  (5,'Matt',100000,33,'male','sales'),
	  (6,'Jeff',112000,27,'male','operations')

	  */

Merge e_target as t
using e_source as s
	on t.e_id = s.e_id

when matched 
	then update set t.e_salary=s.e_salary , t.e_age=s.e_age
when not matched by target
	then insert(e_id,e_name , e_salary , e_age, e_gender ,e_dep)
	values(s.e_id,s.e_name , s.e_salary , s.e_age, s.e_gender ,s.e_dep)
when not matched by source
then delete;

select * from e_target
--Joins

create table department(
d_id int
,d_name varchar(20)
,d_location varchar(20))

insert into department(d_id,d_name,d_location)
values(1,'Content','NewYork'),
	  (2,'Support','Chicago'),
	  (3,'Analytics','NewYork'),
	  (4,'sales','Boston'),
	  (5,'Tech', 'Dallas') ,
	  (6, 'Finance', 'Chicago')

--Inner Join -- returns common rercords with both table

select * from employee as e
inner join department on e.e_dep=department.d_name /* returns same values on e_dep and d_name */

-- Left join -- returns all record from left table and match record of right table.

select * from employee as e
left join department on e.e_dep=department.d_name

-- Right Join -- returns all records from right table matching those of left table.

select * from employee as e
right join department on e.e_dep=department.d_name;

-- Full Outer join -- returns all records from table a and b,

select * from employee as e
full join department on e.e_dep=department.d_name;
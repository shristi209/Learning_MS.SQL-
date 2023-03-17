create database student1
--Creating Table
create table employee_tbl
(
empid int primary key,  --creating unique key i.e. primary key(empid)
firstname varchar(50),
lastname varchar(50),
salary float,
mobile_no varchar(15)
);
select * from employee_tbl
insert into employee_tbl   --inserting data in a table
values(1,'Saurav', 'Rijal', '150', '9876543210'),
(3, 'Ankita', 'Subedi','100000', '9876543210'),
(5, 'Ram', 'Sherpa','20','9876543210')

drop table  employee_tbl

delete from employee_tbl where empid=1    --deleting employee id 1 

update employee_tbl set firstname='shristi' where empid=3  -- replacing another data in employee id 3
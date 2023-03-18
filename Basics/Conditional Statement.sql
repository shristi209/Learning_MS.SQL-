--create a table customer 5 with the following field with conditional statement
create database student3
--Creating Table
create table customers
(
cust_no varchar(5) primary key,
lname varchar(10),
fname varchar(10),
addr varchar(10),
city varchar(10),
states varchar(10),
pin varchar(10),
birth_date date,
status varchar(10),
check(status in('V','I'))
);
select * from customers

--drop table customers

insert into customers

values(98, 'Chapagain', 'Shristi', 'Kathmandu', 'Banesheor', 'State2', '1100', '06/02/2022', 'i')
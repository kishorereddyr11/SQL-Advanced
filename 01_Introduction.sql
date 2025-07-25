create table amazon_orders(
	order_id integer,
	order_date date,
	product_name varchar(25),
	total_price decimal(10,2),
	payment_method varchar(15)
);

-- Inserting values into table

insert into amazon_orders
values(1,'2025-07-11','Baby Milk',34.23,'UPI');

insert into amazon_orders
values(2,'2025-07-12','Baby Powder',25.95,'Debit Card');

insert into amazon_orders
values(3,'2025-07-13','Baby Dress',120.89,'Credit Card');

-- Select command
select * from amazon_orders;

select product_name from amazon_orders;

select order_date, product_name from amazon_orders;

-- Top Keyword
select top 2 * from amazon_orders;

-- This is for Single Line Comment

/*
 This is for Multi Line comment
 Line 2
*/

-- Order By keyword
-- By default it is Ascending Order
select * from amazon_orders
order by order_date;

select * from amazon_orders
order by order_date desc;

select * from amazon_orders
order by order_date asc;

select product_name from amazon_orders
order by order_date desc;

-- After sorting order date any order date is same 
--then the both product name will be sorted
select * from amazon_orders 
order by order_date desc, product_name asc;

--DDL - Data Defination Language [ creating or removing structure ]
--DML - Data Manipulation Language [ Manuplating the Data ]
--DQL - Data Querying Language [ Just Querying Data ]

--Drop command completly the table will be deleted in the database
drop table amazon_orders;

--Truncate the table
delete from amazon_orders;

--Create Schema
create schema hr 
go

--Creating Table in hr schema
create table hr.test(
	id integer,
	name varchar(25)
);

--Inserting data in hr.test
insert into hr.test
values(1,'Kishore Reddy')

insert into hr.test
values(2,'Murugan')

--Quering Data from hr.test
select * from hr.test

--Creating a new table in hr schema
create table hr.demo(
	id integer,
	name varchar(25)
);

select * from hr.demo

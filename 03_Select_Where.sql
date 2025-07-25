select * from orders;

--Distinct Keyword
select distinct ship_mode from orders;

select distinct ship_mode,segment from orders;

--Selecting all rows whose ship mode is first class
select * from orders where ship_mode = 'first class';

--Select all rows whose quantity is grater then are equal to 5
select * from orders where quantity>=5;

--Order of Execution
select top 5 order_date, quantity
from orders
where quantity>=5
order by quantity asc;

--Always place distinct keyword immideatly after select keyword
select distinct top 5 quantity
from orders
where quantity>=5
order by quantity asc;

/*
	from orders executed 1st
	where executed 2nd
	order by executed 3rd
	top 5 executed 4th
	order_id,quantity is executed 5th
*/

--Between keyword
select * from orders 
where order_date between '2015-12-08' and '2016-01-12'
order by order_date asc;

--Give me all rows whose ship mode is first class and same day
select * from orders
where ship_mode in ('first class','same day');

select distinct ship_mode from orders
where ship_mode in ('first class','same day');

-- NOT IN keyword
select * from orders
where ship_mode not in ('first class','same day');
--AND Keyword
select * from orders
where ship_mode = 'first class' and segment = 'consumer';
--OR Keyword
select * from orders
where ship_mode = 'first class' or segment = 'consumer';

--WHERE clause is purly row wise
select * from orders
where quantity>5 and order_date>'2015-11-13';

--OR always Incerese the rows 
--AND always Decerese the rows

--Create a new column In output only
select *, profit/sales as ratio
from orders

select *, profit/sales as ratio, profit+sales as total
from orders

--Pattern Matching--LIKE operator--
select order_id, order_date,customer_name 
from orders
where customer_name = 'Claire Gute';

select order_id, order_date,customer_name 
from orders
where customer_name like 'C%';

select distinct customer_name
from orders
where customer_name like 'Chris%';

select distinct customer_name
from orders
where customer_name like '%re';

select distinct customer_name
from orders
where customer_name like '%ven%';

select distinct customer_name
from orders
where customer_name like 'a%a';

select distinct customer_name
from orders
where customer_name like '_l%';


select distinct customer_name
from orders
where customer_name like '%l_';


select distinct customer_name
from orders
where customer_name like 'c[al]%';

select distinct customer_name
from orders
where customer_name like 'c[a-l]%';

select distinct customer_name
from orders
where customer_name like 'c[^al]%';

select * from orders where customer_name not like 'a%n';
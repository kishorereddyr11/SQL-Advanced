--Display all columns from the first 10 rows of the orders table.
select top 10 * from orders;

--Show only the order_id, order_date, and customer_name columns for all orders.
select order_id,order_date,customer_name from orders;

--Find the distinct ship_mode values used in the orders table.
select distinct ship_mode from orders;

--Display the top 5 most recent orders by order_date.
select top 5 * from orders
order by order_date desc;

--Find all orders where the profit was greater than $100.
select * from orders
where profit>100;

--Show orders where the discount was exactly 0.2 (20%).
select * from orders
where discount = 0;

--Find all orders from the 'Consumer' segment.
select * from orders
where segment = 'consumer';

--Display orders shipped via 'Second Class' where the quantity was more than 3.
select * from orders
where ship_mode = 'second class' and quantity>3;

--Show all orders sorted by sales amount in descending order.
select * from orders
order by sales desc;

--Display orders first sorted by region in ascending order, then by sales in descending order.
select * from orders
order by region asc, sales desc;

--Find the top 10 most profitable orders.
select top 10 * from orders
order by profit desc;

--Find all orders placed in the year 2016.
select * from orders
where year(order_date) = 2016;

--Show orders placed between January 1, 2016 and March 31, 2016.
select * from orders
where order_date between '2016-01-01' and '2016-03-31';

--Find orders placed on weekends (Saturday or Sunday).
select * from orders
where datepart(weekday,order_date) in (1,7)

--Find all customers whose names start with 'A'
select distinct customer_name
from orders
where customer_name like 'A%';

--Find customers whose names contain 'll' anywhere in the name.
select distinct customer_name
from orders
where Customer_Name like '%ll%';

--Find customers whose names are exactly 9 characters long.
select distinct customer_name
from orders
where len(trim(customer_name)) = 9;


--Find customers whose names start with 'J' and end with 'n'.
select distinct customer_name
from orders
where customer_name like 'j%n';

--Find orders from the 'Corporate' segment with sales over $1000.
select * from orders
where segment='corporate' and sales>100;

--Show orders shipped via 'First Class' or 'Same Day' with quantity greater than 5.
select * from orders
where (ship_mode = 'first class' or ship_mode = 'same day') and quantity>5;

--Find orders from the 'West' region with profit between $50 and $100.
select * from orders
where Region = 'west' and profit between 50 and 100;

--Calculate the profit margin (profit/sales) for each order and display with order details.
select *, profit/sales as profit_margin 
from orders

--Show orders where the discount amount (sales × discount) was more than $100.
select *,discount*sales as discount_amount
from orders
where discount*sales>100;

--Calculate the total cost (sales - profit) for each order.
select *, sales - profit as total_cost
from orders

--Find all unique combinations of region and ship_mode
select distinct region , ship_mode
from orders

--Find the top 5 most profitable products.
select top 5 product_name , sum(profit) as total_profit
from orders
group by product_name
order by total_profit desc;




select * from amazon_orders;

--Alter Command
alter table amazon_orders alter column order_date datetime;

insert into amazon_orders 
values(4,'2025-07-14 12:05:12','Shoes',456.34,'UPI');

--Add Extra Column in Existing Table
alter table amazon_orders add user_name varchar(30);

insert into amazon_orders 
values(5,'2025-07-15 01:05:12',null,52.34,'Credit Card','kishore.unknown');

--datetime to varchar is possible if the table is empty
--varchar to datetime is also possible if the table is empty

--Create another table with keys
create table a_orders(
	order_id integer not null,
	order_date date,
	product_name varchar(25),
	total_price decimal(10,2),
	payment_method varchar(15) check(payment_method in ('UPI','CARD')),
	discount integer check(discount<=20)
);

--Adding new column with default value
alter table a_orders add category varchar(25) default 'Mens Wear';

--Change the constraint for a column
alter table a_orders add constraint pk_order_id primary key (order_id);

select * from a_orders;

--Inserting values into the table
insert into a_orders
values(1,'2025-07-11','Shirt',150.32,'UPI',15,null);

insert into a_orders(order_id,order_date,product_name,total_price,payment_method,discount)
values(2,'2025-07-12','T-Shirt',160.32,'CARD',15);

insert into a_orders
values(3,'2025-07-13','Full-Shirt',170.32,'UPI',15,'Boys Wear');

insert into a_orders
values(4,'2025-07-14','Half-Shirt',180.32,'CARD',15,'Mens Fashion');

--default takes default value in that column
insert into a_orders
values(5,'2025-07-15','Half-Check-Shirt',190.32,'UPI',15,default);

-- Unique and Not Null combine we call Primary Key
--We can apply Primary Key for two columns at a time in a table 
--Primary key(order_id,product_name)
--We can have same value for order id but the product name must be different
--(1,'shoes')
--(1,'shirt') this is possibe even we have primary key 

--Delete Perticular column
delete from a_orders where order_id = 1;

--Updating pertuclar row cell
update a_orders
set discount =19 
where order_id = 4;

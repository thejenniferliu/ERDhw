--add row of data to customer table

--syntax: INSERT INTO table_name(col_1, col_2, etc) values(val_1, val_2)
insert into customer(
	first_name,
	last_name,
	email,
	loyalty_member,
	username 
) values (
	'Robert',
	'Flobbert',
	'robertflobbert@gmail.com',
	true,
	'robertf'
);

select * from customer;

--insert data without column names
insert into customer values (
	3,
	'Freddie',
	'Kruger',
	'freddie@scarytow.gov'
	'321 elm st'
	'1',
	'fredk'
)

--onnly insert first name and last name
insert into customer(
	first_name, 
	last_name
) values (
	'Jason',
	'Vorhees'
);

insert into seller(
	seller_name,
	description,
	email
) values (
	'New Egg',
	'Computer parts',
	'newegg@gmail.com'
);

select *
from seller;

insert into category(
	category_name,
	color	
) values (
	'raspberry pie',
	'pink'
);

insert into category(
	category_name,
	color	
) values (
	'usb-drives',
	'blue'
), (
	'water bottles',
	'clear'
);

select * from category;
--add multiple rows of data in one command
--syntax: insert into table(col1, col2, ..) values(val_a_1, val_a_2..)
insert into product(
product_name,
description,
price,
seller_id,
category_id
) values (
	'banana-pi',
	'all rasberries nd pico are gone',
	999.99,
	1,
	1
), (
	'mircro-c',
	'i fit in an oculus quesst',
	444.32,
	40,
	2	
);

select * from product

--- syntax: update table_name set col_name = value, etc where condition
update customer 
set address = '555 circle drive'
where customer_id = 1;

select * from customer;
--update without where clause will update all the rows

update customer 
set loyalty_member = false;

--a DELETE w/o WHERE will delete all rows
--DELETE from seller;

--DELETE all products < 999.99
--Syntax -- delete from table_name WHERE condition 

delete from product 
where price < 999.99;

select * from product

delete from product
where product_id = 3;


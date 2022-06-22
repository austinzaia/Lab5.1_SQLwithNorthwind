use northwind;
select * from customers;
select distinct Country_region from customers;
select * from customers where Last_Name like 'RA%';
select * from customers order by ID limit 10;
select ContactName, zip_postal_code from customers
where zip_postal_code = '1010' or
zip_postal_code = '12209' or
zip_postal_code = '05023';
select * from orders where Ship_Country_Region != 'null';
select * from customers order by state_province, city;
insert into customers(last_name, first_name, country_region)
values('smith', 'isaac', 'italy');
update customers set zip_postal_code = '90210' where state_province = 'MA';
delete from order_details where order_id and quantity = '1';
select avg(quantity) from order_details;
select min(quantity) from order_details;
select max(quantity) from order_details;
select avg(quantity), max(quantity), min(quantity) 
from order_details group by order_id;
select customer_id from orders where id = '32';
select * from customers inner join orders on customers.zip_postal_code = orders.ship_zip_postal_code;
select * from customers left join orders on customers.zip_postal_code = orders.ship_zip_postal_code;
select * from customers right join orders on customers.zip_postal_code = orders.ship_zip_postal_code;
select ship_city, ship_country_region from orders inner join employess on orders.employee_id = employees.id where employess.city = 'Boston';
select ship_name from orders join order_details on orders.id = order_details.order_id
join products on order_details.product_id = products.id where products.discontinued = 1;
select first_name from employees where employees.reports_to IS NULL;
Select count (*) , 'deliveries' from deliveries.deliveries union all
Select count (*) , 'orders' from orders.orders union all
Select count (*) , 'orders_status' from orders.orders_status union all
Select count (*) , 'goods' from goods.goods union all
Select count (*) , 'customer_addresses' from customers.customer_addresses union all
Select count (*) , 'customers' from customers.customers union all
Select count (*) , 'drivers' from deliveries.drivers union all
Select count (*) , 'ordered_goods' from goods.ordered_goods;

select table_schema, table_name, 'Select count (*),'||chr(39)|| table_name || chr(39)|| ' table_name ' ||' from ' || table_schema ||'.'|| table_name || ' union all '
from information_schema.tables
where table_schema not in ('information_schema','pg_catalog','sandbox')
group by table_schema, table_name  

 
Select count (*),'deliveries' table_name  from deliveries.deliveries union all 
Select count (*),'orders' table_name  from orders.orders union all 
Select count (*),'orders_status' table_name  from orders.orders_status union all 
Select count (*),'goods' table_name  from goods.goods union all 
Select count (*),'customer_addresses' table_name  from customers.customer_addresses union all 
Select count (*),'customers' table_name  from customers.customers union all 
Select count (*),'drivers' table_name  from deliveries.drivers union all 
Select count (*),'ordered_goods' table_name  from goods.ordered_goods 
Order by count;

select min(count), max (count), AVG (count) from 
(Select count (*),'deliveries' table_name  from deliveries.deliveries union all 
Select count (*),'orders' table_name  from orders.orders union all 
Select count (*),'orders_status' table_name  from orders.orders_status union all 
Select count (*),'goods' table_name  from goods.goods union all 
Select count (*),'customer_addresses' table_name  from customers.customer_addresses union all 
Select count (*),'customers' table_name  from customers.customers union all 
Select count (*),'drivers' table_name  from deliveries.drivers union all 
Select count (*),'ordered_goods' table_name  from goods.ordered_goods) as store;

with store as (
Select count (*),'deliveries' table_name  from deliveries.deliveries union all 
Select count (*),'orders' table_name  from orders.orders union all 
Select count (*),'orders_status' table_name  from orders.orders_status union all 
Select count (*),'goods' table_name  from goods.goods union all 
Select count (*),'customer_addresses' table_name  from customers.customer_addresses union all 
Select count (*),'customers' table_name  from customers.customers union all 
Select count (*),'drivers' table_name  from deliveries.drivers union all 
Select count (*),'ordered_goods' table_name  from goods.ordered_goods)
-- select * from store

,table_stat as (select min(count), max (count), AVG (count) from store)

,table_stat_2 as (select min(count), max (count), AVG (count) from store where count >1)

select * from table_stat union all
select * from table_stat_2 

table_stat as (select min(count), max (count), AVG (count) from store)
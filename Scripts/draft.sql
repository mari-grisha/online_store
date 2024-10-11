insert into customers.customers values (
'89ce1282-29f7-4546-b222-5458ffd60906', 'Мария', 'Шарова', '89104563322','2000-05-01','2013-05-01','2013-06-01');

select *
from customers.customer_addresses 
limit 10

select *
from goods.goods 
limit 10

select *
from orders.orders 
limit 10

select count(*)
from information_schema.tables
where table_schema not in ('information_schema','pg_catalog','sandbox')
group by table_schema

Select count (*) , 'deliveries' from deliveries.deliveries union all
Select count (*) , 'orders' from orders.orders union all
Select count (*) , 'orders_status' from orders.orders_status union all
Select count (*) , 'goods' from goods.goods union all
Select count (*) , 'customer_addresses' from customers.customer_addresses union all
Select count (*) , 'customers' from customers.customers union all
Select count (*) , 'drivers' from deliveries.drivers union all
Select count (*) , 'ordered_goods' from goods.ordered_goods 

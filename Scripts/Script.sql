Select count (*) , 'deliveries' from deliveries.deliveries union all
Select count (*) , 'orders' from orders.orders union all
Select count (*) , 'orders_status' from orders.orders_status union all
Select count (*) , 'goods' from goods.goods union all
Select count (*) , 'customer_addresses' from customers.customer_addresses union all
Select count (*) , 'customers' from customers.customers union all
Select count (*) , 'drivers' from deliveries.drivers union all
Select count (*) , 'ordered_goods' from goods.ordered_goods;

select table_schema, table_name, 'select' || table_name 
from information_schema.tables
where table_schema not in ('information_schema','pg_catalog','sandbox')
group by table_schema, table_name  


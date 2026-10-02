use Northwind_S02_Lab;
go

select min(UnitPrice) as minimo,
max(UnitPrice) as maximo 
from products
where  supplierID =2


select ProductID,
ProductName,
UnitPrice,
SupplierId
from Products
where UnitPrice > all (
select UnitPrice 
from products
where  supplierID =2
)
and UnitPrice <> 2

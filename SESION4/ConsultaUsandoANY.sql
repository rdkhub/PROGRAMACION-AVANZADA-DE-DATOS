-- Comparar el precio de cada producto con varios 
-- precios pertenecientes al proveedor SupperId=2
--El objetivo es comprender ANY y comprobar q SOME expresa misma condicion

select
UnitPrice
from Products
where SupplierID = 2 
order by UnitPrice

select ProductID,
ProductName,
UnitPrice, 
SupplierID
from Products
where UnitPrice > ANY (
select
UnitPrice
from Products
where SupplierID = 2 
)
and SupplierID <> 2;
 
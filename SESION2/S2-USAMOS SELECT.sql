use Northwind_S02_Lab;
go


--select
select productID,
ProductName ,
UnitPrice ,
UnitsInStock, 
-- * para multiplicar 
QuantityPerUnit as ValorPorIventario,
unitsInStock * UnitPrice as ValorInventario
from
dbo.Products;
go

select LastName,
FirstName
from dbo.Employees;
go


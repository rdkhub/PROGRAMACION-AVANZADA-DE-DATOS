/**
FULL OUTER JOIN
*/
USE Northwind_S02_Lab;
GO

select p.ProductID,
p.ProductName,
od.OrderID,
od.Quantity
from dbo.Products as p
full outer join 
dbo.[Order Details] as od
on p.ProductID = od.ProductID;
go

use Northwind_S02_Lab;
go

/** 
LEFT OUTER JOIN
*/
select 
c.CustomerID,
c.ContactName,
o.OrderID,
o.OrderDate
from dbo.Customers as c
left outer join dbo.Orders as o
on c.CustomerID = o.CustomerID
order by c.CustomerID, o.OrderDate;
go

/**
 Muestra todos los productos y su categoria
 cuando exista
 ProductID
 ProductName
 CategoryName
 */
select 
p.ProductID,
p.ProductName,
c.CategoryName
from dbo.Products as p
left outer join dbo.Categories as c 
on p.CategoryID = c.CategoryID
order by p.ProductName;
go

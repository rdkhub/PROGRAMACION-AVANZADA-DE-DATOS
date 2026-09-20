/** 
RIGHT OUTER JOIN
*/

select 
c.CustomerId,
c.ContactName,
o.OrderID,
o.OrderDate
from dbo.Customers as c 
Right outer join dbo.Orders as o 
on c.CustomerID = o.CUstomerID;
go
/**
 Muestren todos los proveedores de productos aunque el
 proveedor ya no exista
 SupplierID
 CompanyName
 ProductName
 */

select 
s.SupplierID,
s.CompanyName,
p.ProductName
from dbo.Products as p
Right outer join dbo.Suppliers as s
on p.SupplierID = s.SupplierID
order by s.CompanyName;
go
/**
 Muestren todos los productos aunque el
 proveedor ya no exista
 SupplierID
 CompanyName
 ProductName
 */
select 
s.SupplierID,
s.CompanyName,
p.ProductName
from dbo.Suppliers as s
Right outer join dbo.Products as p
on p.SupplierID = s.SupplierID
order by s.CompanyName;
go


/** 
CROSS JOIN
*/

select 
p.ProductName,
p.QuantityPerUnit,
s.CompanyName
from dbo.Products as p 
cross join dbo.Suppliers as s
order by p.ProductName, s.CompanyName;
go


/**
Relacion todas los productos con
todas las categorias
ProductName
UnitPrice
CategoryName
*/


select 
p.ProductName,
p.UnitPrice,
c.CategoryName
from dbo.Products as p 
cross join dbo.Categories as c
order by p.ProductName, c.CategoryName
go



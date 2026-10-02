use Northwind_S02_Lab;
go

declare @categoria nvarchar(15) = 'Beverages'

select p.ProductName,
c.CategoryName
from Products as p 
left join Categories as c 
on p.CategoryID = c.CategoryID
where c.CategoryName = @categoria
or(c.CategoryName is null and @categoria is null)



use Northwind_S02_Lab;
go


--Where para filtrar,  cuando son string, usamos "="
Select CustomerID, CompanyName, Country
from dbo.Customers
where Country = 'Germany'
go

--Cuando son Int, usamos "< or >"
select ProductID, ProductName,UnitPrice
from dbo.Products
where UnitPrice <= 20
go

--USAMOS LINK
select ProductID, ProductName, CategoryID
From dbo.Products
where CategoryID in ( 1,4,6)
go

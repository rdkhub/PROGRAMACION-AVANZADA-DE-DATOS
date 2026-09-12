use Northwind_S02_Lab;
go

-- USAMOS 'WHERE' Y 'BETWEEN' para filtrar por rangos y 'ORDER' para ordenar y 'desc'
select productID, ProductName, UnitsInStock
from dbo.Products
where UnitsInStock BETWEEN 10 AND 20 
ORDER BY ProductName
go


--USAMOS BETWEEN Y IN JUNTOS, Y PARA CONECTARLOS, USAMOS IN
select ProductID, ProductName, CategoryID, UnitPrice
From dbo.Products
where UnitPrice BETWEEN 10 and 50 and
 CategoryID in ( 1,4,6);
go


SELECT *
FROM products
WHERE unitPrice BETWEEN 10 AND 30
AND categoryid IN (2, 7, 8);

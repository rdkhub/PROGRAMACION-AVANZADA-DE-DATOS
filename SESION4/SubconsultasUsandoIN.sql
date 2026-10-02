
use Northwind_S02_Lab;
go
-- Mostrar clientes q tienen pedidos de productos 
-- cuyo precio unitario es mayor a 20 
select ProductID
from Products
where UnitPrice >20;
--USAMOS DISTINCT PARA ELIMINAR FILAS DUPLICADAS 
--Y MOSTRAR SOLO VALORES UNICOS DE LA CONSULTA
SELECT DISTINCT c.CompanyName,
c.ContactName
from Customers as c 
Join Orders as o 
on C.CustomerID = o.CustomerID
join [Order Details] as od 
on od.OrderID = o.OrderID
where od.ProductID in ( select ProductID
from Products
where UnitPrice >20)



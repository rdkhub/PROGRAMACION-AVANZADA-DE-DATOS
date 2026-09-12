use Northwind_S02_Lab;
go
--Agrupamos con 'GROUP'
select customerId as ClientesID, Count(OrderID) as NroPedidos
from dbo.Orders
Group By CustomerID
Order by NroPedidos desc


select categoryID, avg(unitPrice) as PrecioPromedio
from dbo.Products
Group by CategoryID
Order by CategoryID

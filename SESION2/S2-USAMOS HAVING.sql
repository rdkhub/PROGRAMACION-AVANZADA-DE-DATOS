use Northwind_S02_Lab;
go


 -- having es como usar un where pero para group
select  customeRID, count(OrderID) AS NroPedidos
from dbo.Orders
Group by CustomerID
HAVING count(OrderId)>2
order by NroPedidos 





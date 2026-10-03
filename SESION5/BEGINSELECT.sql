use Northwind_S02_Lab;
go


--Insertar un pedido a partir de un cliente existente 

select CustomerID,CompanyName
from Customers 
where CustomerID = 'ALFKI'
begin tran

insert into Orders(OrderID,CustomerID,OrderDate, Freight)
select 10280, CustomerID, GETDATE(), 25
from Customers
where CustomerID = 'ALFKI'

select top (1) OrderID,CustomerID,OrderDate 
from Orders
where CustomerID = 'ALFKI'
order by OrderID desc



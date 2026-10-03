select customerID,
CompanyName,ContactName
from Customers
where CustomerID = 'HUNGO'

delete from  [Order Details]
where OrderID = 10262

delete from Orders
where CustomerID = 'HUNGO'
begin tran;

delete from Customers
where CustomerID = 'HUNGO'

select customerID,
CompanyName,ContactName
from Customers
where CustomerID = 'HUNGO'

rollback;

select customerID,
CompanyName,ContactName
from Customers
where CustomerID = 'HUNGO'

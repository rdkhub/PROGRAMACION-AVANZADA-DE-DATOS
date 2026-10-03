USE Northwind_S02_Lab;
GO

select 
CustomerID,
CompanyName,
ContactName,
Country
from Customers
where CustomerID = 'LAC01'

BEGIN TRAN;

INSERT INTO Customers(CustomerID,CompanyName,ContactName,Country)
VALUES('LAC01','Lideratec Academy','Wilder','Peru')

select 
CustomerID,
CompanyName,
ContactName,
Country
from Customers
where CustomerID = 'LAC01'


rollback;

select 
CustomerID,
CompanyName,
ContactName,
Country
from Customers
where CustomerID = 'LAC01'




--Insertar un proveedor que no exista, usar la tabla Suppliers


select 
SupplierID,
CompanyName,
Country
from Suppliers
where SupplierID = '7'


BEGIN TRAN 

insert into Suppliers(SupplierID,CompanyName,Country)
values('7','Nestle','Peru')

select 
SupplierID,
CompanyName,
Country
from Suppliers
where SupplierID = '7'

rollback;

select 
SupplierID,
CompanyName,
Country
from Suppliers
where SupplierID = '7'



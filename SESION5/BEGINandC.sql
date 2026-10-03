USE Northwind_S02_Lab;
GO


select 
SupplierID,
CompanyName
from Suppliers
where CompanyName = 'Exotic Liquids'

select 
	ProductID,
	ProductName, 
	SupplierID,
	CategoryID

from Products
	where SupplierID in (
	select 
	SupplierID
	from Suppliers
	where CompanyName = 'Exotic Liquids'
)

begin tran 

update Products
set CategoryID = 2
where SupplierID in (select 
	SupplierID
	from Suppliers
	where CompanyName = 'Exotic Liquids'
)
select 
	ProductID,
	ProductName, 
	SupplierID,
	CategoryID
from Products
	where SupplierID in (
	select 
	SupplierID
	from Suppliers
	where CompanyName = 'Exotic Liquids'
)


rollback;




use Northwind_S02_Lab;
go


--actualizamos usando operaciones aritmeticas

select top(5) ProductID,ProductName,UnitPrice as PrecioAntiguo,
UnitPrice * 1.10 as PrecioEsperado
from Products
where CategoryID = 2
order by ProductID;

begin tran;
update Products 
set UnitPrice=UnitPrice * 1.10
where CategoryID = 2 

select top(5) ProductID,ProductName,UnitPrice
from Products
where CategoryID = 2
order by ProductID;

rollback;


--Actualizar el precio de los productos de la categoria 1 u 30%

select top(5) ProductID,ProductName,UnitPrice as PrecioAntiguo,
UnitPrice * 1.30 as PrecioEsperado
from Products
where CategoryID = 1
order by ProductID;

begin tran;
update Products 
set UnitPrice=UnitPrice * 1.30
where CategoryID = 1

select top(5) ProductID,ProductName,UnitPrice
from Products
where CategoryID = 1
order by ProductID;

rollback;

use Northwind_S02_Lab;
go

--PARA HACER OPERACIONES

select
--Usamoas 'avg' para sacar promedio
avg(UnitPrice) as PrecioPromedio,
--'max' el valor mas alto
max(UnitPrice) as PrecioMayor,
--'min' el valor mas bajo
min(UnitPrice) as PricioMenor,
--'sum' suma de valores
sum(UnitsInStock) as StockTotal,
--'count' conteo de t
count(*) as NumeroProductos
from dbo.Products
where CategoryID = 2 


select
avg(UnitPrice) as PrecioPromedio,
min(UnitPrice) as PricioMenor,
count(UnitsInStock) as NumeroProductos
from dbo.Products
where CategoryID = 4 
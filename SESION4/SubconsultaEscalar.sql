use Northwind_S02_Lab;

go

--Cual es el promedio de todos los productos
--Cuantas unidades se han vendido de cada producto
--Que productos tienen un precio mayor al promedio 
--Como unimos el problema con sus cantidades 

--Promedio = avg

select avg(UnitPrice) as PrecioPromedio
from Products;
--Suma = sum
	select ProductID,
	SUM (quantity) as UnidadesVendidas
	from [Order Details]
	group by ProductID 

--Unimos las consultas 
	select p.ProductName,
		p.UnitPrice,
		od.UnidadesVendidas
	from Products as p
	join (select ProductID,
		SUM (quantity) as UnidadesVendidas
		from [Order Details]
		group by ProductID

	) as od 
		on od.ProductID = p.ProductID
	where 
		P.UnitPrice > (select avg(UnitPrice) as PrecioPromedio
		from Products
	)
	Order by p.UnitPrice desc;


--Obtener el ProductName y UnitPrice de los productos 
--cuyo stock sean mayor a 20 y cuyo precio se amenor 
--que el promedio de todos los productos

select avg(UnitPrice) as PrecioPromedio
from Products;


select p.ProductName,
		P.UnitPrice
		from Products as p
		where UnitsInStock > 20
		and UnitPrice < (select avg(UnitPrice) as PrecioPromedio
from Products
		) 
		order by p.UnitPrice desc;
		go






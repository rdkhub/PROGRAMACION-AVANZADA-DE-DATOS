use Northwind_S02_Lab;
go

-- OPERADORES DE COMPARACION


-- Mostrar clientes cuya columna 
-- city sea igual a la obtenida para ALFKI

select city 
from Customers
where CustomerID = 'ALFKI'

select CustomerID,
CompanyName,
City
from Customers
where City = (select city 
from Customers
where CustomerID = 'ALFKI')
order by CompanyName;
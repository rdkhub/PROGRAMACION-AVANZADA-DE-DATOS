use Northwind_S02_Lab;
go
--USAMOS 'LIKE' PARA ENCONTRAR DENTRO DEL CAMPO SELECIONADO LOS PARECIDOS
Select cUstOmerID,CompanyName
From dbo.Customers
where CompanyName like 'c%'
go
--FILTRAMOS POR LETRAS DE MAS DE DOS Q TENGAN EL NOMBRE DE LA EMPRESA
Select cUstOmerID,CompanyName
From dbo.Customers
where CompanyName like '%ar%'
go
--FILTRAMOS PALABRAS PERO CON RANGOS
Select cUstOmerID,CompanyName
From dbo.Customers
where CompanyName like '[A-C]%'
go
use Northwind_S02_Lab;
go
/**
SENTENCIA INNER JOIN
*/

SELECT p.ProductID,
p.ProductName
FROM dbo.Products as p
INNER JOIN dbo.Categories as c
ON p.CategoryID = c.CategoryID;
/**
 obtener el nombre del proveedor y el nombre de cada
 producto que suministra,para ello usar la tablas
 Suppliers y Product con la sentencia INNER JOIN
 */
select p.ProductName,
s.CompanyName
from dbo.Products as p
inner join dbo.Suppliers as s
on p.SupplierID = s.SupplierID;

USE Northwind_S02_Lab;
go


select 
EmployeeID,
FirstName,
LastName
from Employees
where EmployeeID = 1

begin tran;

update Employees 
set FirstName = 'Jhon',
LastName = 'Smith'
where EmployeeID = 1

select 
EmployeeID,
FirstName,
LastName
from Employees
where EmployeeID = 1

rollback;
select 
EmployeeID,
FirstName,
LastName
from Employees
where EmployeeID = 1



--Actualizar el nombre y el apellido del emplreado 5



select 
EmployeeID,
FirstName,
LastName
from Employees
where EmployeeID = 5

begin tran;

update Employees 
set FirstName = 'Rodrigo',
LastName = 'Gomez'
where EmployeeID = 5

select 
EmployeeID,
FirstName,
LastName
from Employees
where EmployeeID = 5

rollback;
select 
EmployeeID,
FirstName,
LastName
from Employees
where EmployeeID = 5

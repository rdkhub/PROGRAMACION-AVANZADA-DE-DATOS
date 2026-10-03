use Northwind_S02_Lab;
go


select 
EmployeeID,	
LastName,
FirstName
from Employees
where LastName in ('Poma','Corrales')


begin tran;


insert into Employees (EmployeeID,LastName,FirstName,City,Country)
values
(8 ,'Poma','Juan','Lima','Peru'),
(9, 'Corrales','Pablo','Lima','Peru');

select 
EmployeeID,	
LastName,
FirstName
from Employees
where LastName in ('Poma','Corrales')

rollback;

select 
EmployeeID,	
LastName,
FirstName
from Employees
where LastName in ('Poma','Corrales')



--A esta misma transaccion, ingresar 3 empleados, con los apelidos, Perez, Mamani, Chavez


select 
EmployeeID,	
LastName,
FirstName
from Employees
where LastName in ('Perez','Mamani','Chavez');


begin tran;


insert into Employees (EmployeeID,LastName,FirstName,City,Country)
values
(8 ,'Perez','Juan','Lima','Peru'),
(9, 'Mamani','Pablo','Lima','Peru'),
(10 ,'Chavez','Juan','Lima','Peru');

select 
EmployeeID,	
LastName,
FirstName
from Employees
where LastName in ('Perez','Mamani','Chavez');

rollback;



select 
EmployeeID,	
LastName,
FirstName
from Employees
where LastName in ('Perez','Mamani','Chavez');

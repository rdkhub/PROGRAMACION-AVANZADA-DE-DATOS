create database AlquilerCoches
go


use AlquilerCoches;
go


create table ClienteDemo(
IdCliente int primary key, 
Nombre varchar(80),
DNI char(8) unique
);
go
-- editar una tabla		
alter table ClienteDemo
add DNI char(8) null;
go
-- elimar una tabla	
--drop table ClienteDemo
--go

insert into ClienteDemo(IdCliente,Nombre,DNI)
values (1,'Pedro','12345678');
go
insert into ClienteDemo(IdCliente,Nombre,DNI)
values (2,'Ana','87654321');
go


select * from ClienteDemo;
go


--Importante poner where, nombre de la columna y su posicion
update ClienteDemo 
set Nombre = 'Ana Silva'
where IdCliente = 2 ;
go

-- Para Eliminar de igual manera, poner where 
delete from ClienteDemo
where IdCliente = 2;
go


alter table ClienteDemo 
add DepartInicial char (2) null 
default 'LI';
go

insert into ClienteDemo(IdCliente,Nombre,DNI)
values (3,'Juan','15454321');
go

update ClienteDemo 
set DepartInicial = 'SL'
where IdCliente = 2 ;
go

-- INDENTITY se utiliza para generar 
-- valores numéricos secuenciales y correlativos de 
--Manera automatica
create table Agencia(
IdAgencia int primary key identity not null,
Agencia varchar(100)
)


select*  from Agencia;
go

insert into Agencia(Agencia)
values ('Los Andes');
go

insert into Agencia(Agencia)
values ('Los Pinos');
go

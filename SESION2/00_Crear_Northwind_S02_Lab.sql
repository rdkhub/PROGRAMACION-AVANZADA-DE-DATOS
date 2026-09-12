/* Laboratorio reducido y autocontenido para S02.
   No pretende reemplazar la base Northwind completa de Microsoft.
   Crea únicamente las tablas/datos necesarios para practicar los conceptos de la sesión. */
IF DB_ID(N'Northwind_S02_Lab') IS NULL
BEGIN
    CREATE DATABASE [Northwind_S02_Lab];
END
GO
USE [Northwind_S02_Lab];
GO

DROP TABLE IF EXISTS dbo.[Order Details];
DROP TABLE IF EXISTS dbo.Orders;
DROP TABLE IF EXISTS dbo.Products;
DROP TABLE IF EXISTS dbo.Customers;
DROP TABLE IF EXISTS dbo.Employees;
DROP TABLE IF EXISTS dbo.Suppliers;
DROP TABLE IF EXISTS dbo.Categories;
GO

CREATE TABLE dbo.Categories(
  CategoryID int NOT NULL PRIMARY KEY,
  CategoryName nvarchar(30) NOT NULL
);
CREATE TABLE dbo.Suppliers(
  SupplierID int NOT NULL PRIMARY KEY,
  CompanyName nvarchar(60) NOT NULL,
  Country nvarchar(30) NULL
);
CREATE TABLE dbo.Products(
  ProductID int NOT NULL PRIMARY KEY,
  ProductName nvarchar(60) NOT NULL,
  SupplierID int NOT NULL,
  CategoryID int NOT NULL,
  QuantityPerUnit nvarchar(40) NULL,
  UnitPrice decimal(10,2) NOT NULL,
  UnitsInStock int NOT NULL,
  CONSTRAINT FK_Products_Suppliers FOREIGN KEY(SupplierID) REFERENCES dbo.Suppliers(SupplierID),
  CONSTRAINT FK_Products_Categories FOREIGN KEY(CategoryID) REFERENCES dbo.Categories(CategoryID)
);
CREATE TABLE dbo.Customers(
  CustomerID nchar(5) NOT NULL PRIMARY KEY,
  CompanyName nvarchar(60) NOT NULL,
  ContactName nvarchar(60) NULL,
  City nvarchar(30) NULL,
  PostalCode nvarchar(12) NULL,
  Country nvarchar(30) NULL
);
CREATE TABLE dbo.Employees(
  EmployeeID int NOT NULL PRIMARY KEY,
  LastName nvarchar(30) NOT NULL,
  FirstName nvarchar(30) NOT NULL,
  City nvarchar(30) NULL,
  Country nvarchar(30) NULL
);
CREATE TABLE dbo.Orders(
  OrderID int NOT NULL PRIMARY KEY,
  CustomerID nchar(5) NULL,
  EmployeeID int NULL,
  OrderDate date NULL,
  Freight decimal(10,2) NOT NULL,
  CONSTRAINT FK_Orders_Customers FOREIGN KEY(CustomerID) REFERENCES dbo.Customers(CustomerID),
  CONSTRAINT FK_Orders_Employees FOREIGN KEY(EmployeeID) REFERENCES dbo.Employees(EmployeeID)
);
CREATE TABLE dbo.[Order Details](
  OrderID int NOT NULL,
  ProductID int NOT NULL,
  UnitPrice decimal(10,2) NOT NULL,
  Quantity smallint NOT NULL,
  Discount decimal(4,2) NOT NULL DEFAULT 0,
  CONSTRAINT PK_OrderDetails PRIMARY KEY(OrderID, ProductID),
  CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY(OrderID) REFERENCES dbo.Orders(OrderID),
  CONSTRAINT FK_OrderDetails_Products FOREIGN KEY(ProductID) REFERENCES dbo.Products(ProductID)
);
GO

INSERT dbo.Categories VALUES
(1,N'Beverages'),(2,N'Condiments'),(3,N'Confections'),(4,N'Dairy Products'),
(5,N'Grains/Cereals'),(6,N'Meat/Poultry'),(7,N'Produce'),(8,N'Seafood');
INSERT dbo.Suppliers VALUES
(1,N'Exotic Liquids',N'UK'),(2,N'New Orleans Cajun Delights',N'USA'),
(3,N'Grandma Kelly''s Homestead',N'USA'),(4,N'Tokyo Traders',N'Japan'),
(5,N'Cooperativa de Quesos',N'Spain'),(6,N'Carlton Foods',N'UK');
INSERT dbo.Products VALUES
(1,N'Chai',1,1,N'10 boxes x 20 bags',18.00,39),
(2,N'Chang',1,1,N'24 - 12 oz bottles',19.00,17),
(3,N'Aniseed Syrup',1,2,N'12 - 550 ml bottles',10.00,13),
(4,N'Chef Anton''s Cajun Seasoning',2,2,N'48 - 6 oz jars',22.00,53),
(5,N'Chef Anton''s Gumbo Mix',2,2,N'36 boxes',21.35,0),
(6,N'Grandma''s Boysenberry Spread',3,2,N'12 - 8 oz jars',25.00,120),
(7,N'Uncle Bob''s Organic Dried Pears',3,7,N'12 - 1 lb pkgs.',30.00,15),
(8,N'Northwoods Cranberry Sauce',3,2,N'12 - 12 oz jars',40.00,6),
(9,N'Mishi Kobe Niku',4,6,N'18 - 500 g pkgs.',97.00,29),
(10,N'Ikura',4,8,N'12 - 200 ml jars',31.00,31),
(11,N'Queso Cabrales',5,4,N'1 kg pkg.',21.00,22),
(12,N'Queso Manchego La Pastora',5,4,N'10 - 500 g pkgs.',38.00,86),
(13,N'Konbu',4,8,N'2 kg box',6.00,24),
(14,N'Tofu',4,7,N'40 - 100 g pkgs.',23.25,35),
(15,N'Pavlova',6,3,N'32 - 500 g boxes',17.45,12);
INSERT dbo.Customers VALUES
(N'ALFKI',N'Alfreds Futterkiste',N'Maria Anders',N'Berlin',N'12209',N'Germany'),
(N'ANATR',N'Ana Trujillo Emparedados',N'Ana Trujillo',N'México D.F.',N'05021',N'Mexico'),
(N'AROUT',N'Around the Horn',N'Thomas Hardy',N'London',N'WA1 1DP',N'UK'),
(N'BSBEV',N'B''s Beverages',N'Victoria Ashworth',N'London',N'EC2 5NT',N'UK'),
(N'CACTU',N'Cactus Comidas para llevar',N'Patricio Simpson',N'Buenos Aires',N'1010',N'Argentina'),
(N'CENTC',N'Centro comercial Moctezuma',N'Francisco Chang',N'México D.F.',N'05022',N'Mexico'),
(N'FRANK',N'Frankenversand',N'Peter Franken',N'München',N'80805',N'Germany'),
(N'GREAL',N'Great Lakes Food Market',N'Howard Snyder',N'Eugene',N'97403',N'USA'),
(N'HUNGO',N'Hungry Owl All-Night Grocers',N'Patricia McKenna',N'Cork',NULL,N'Ireland');
INSERT dbo.Employees VALUES
(1,N'Davolio',N'Nancy',N'Seattle',N'USA'),(2,N'Fuller',N'Andrew',N'Tacoma',N'USA'),
(3,N'Leverling',N'Janet',N'Kirkland',N'USA'),(4,N'Peacock',N'Margaret',N'Redmond',N'USA'),
(5,N'Buchanan',N'Steven',N'London',N'UK');
INSERT dbo.Orders VALUES
(10248,N'ALFKI',1,'1996-07-04',32.38),(10249,N'ALFKI',2,'1996-07-05',11.61),
(10250,N'ALFKI',1,'1996-07-08',65.83),(10251,N'ALFKI',1,'1996-07-08',41.34),
(10252,N'ALFKI',1,'1996-07-09',51.30),(10253,N'ALFKI',2,'1996-07-10',58.17),
(10254,N'AROUT',1,'1996-07-11',22.98),(10255,N'AROUT',3,'1996-07-12',148.33),
(10256,N'BSBEV',3,'1996-07-15',13.97),(10257,N'BSBEV',4,'1996-07-16',81.91),
(10258,N'CACTU',4,'1996-07-17',140.51),(10259,N'CENTC',1,'1996-07-18',3.25),
(10260,N'FRANK',1,'1997-01-02',55.00),(10261,N'GREAL',1,'1997-01-03',12.00),
(10262,N'HUNGO',5,'1997-02-01',90.00),(10263,N'AROUT',5,'1997-02-03',25.00),
(10264,N'BSBEV',2,'1997-03-10',70.00),(10265,N'CACTU',3,'1997-04-11',85.00),
(10266,N'CENTC',4,'1997-05-12',30.00),(10267,N'FRANK',5,'1997-06-13',44.00);
INSERT dbo.[Order Details] VALUES
(10248,1,18.00,12,0),(10248,3,10.00,10,0),(10248,11,21.00,5,0),
(10249,2,19.00,10,0),(10249,14,23.25,9,0),
(10250,4,22.00,40,0),(10250,6,25.00,35,0.10),
(10251,7,30.00,6,0),(10251,9,97.00,15,0.05),
(10252,5,21.35,20,0),(10252,12,38.00,25,0),
(10253,3,10.00,80,0),(10253,8,40.00,30,0),
(10254,10,31.00,18,0),(10254,13,6.00,50,0),
(10255,1,18.00,60,0),(10255,2,19.00,55,0),
(10256,15,17.45,40,0),(10257,11,21.00,75,0),
(10258,4,22.00,90,0),(10259,6,25.00,120,0.15),
(10260,7,30.00,20,0),(10261,8,40.00,12,0),
(10262,9,97.00,8,0),(10263,10,31.00,22,0),
(10264,12,38.00,18,0),(10265,13,6.00,130,0),
(10266,14,23.25,27,0),(10267,15,17.45,35,0);
GO

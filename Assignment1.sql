create database TechShop;

use TechShop;

create table Customers (
	CustomerID varchar(5) primary key,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(255),
	Phone varchar(20),
	Address varchar(100)
);

create table Products (
	ProductID varchar(5) Primary Key,
	ProductName varchar(100),
	Description text,
	Price float,
);


create table Orders (
	OrderID varchar(5) primary key,
	CustomerID varchar(5) foreign key references Customers(CustomerID),
	OrderDate datetime,
	TotalAmount float
);

create table OrderDetails (
	OrderDetailID varchar(5) primary key,
	OrderID varchar(5) foreign key references Orders(OrderID),
	ProductID varchar(5) foreign key references Products(ProductID),
	Quantity int
);

create table Inventory (
	InventoryID varchar(5) primary key,
	ProductID varchar(5) foreign key references Products(ProductID),
	QuantityInStock	int,
	LastStockUpdate datetime
);

INSERT INTO [Customers] VALUES ('C001', 'Joanne', 'Bass', 'jbass@gmail.com', '(171) 555-1212', 'Obere Str. 57 ');
INSERT INTO [Customers] VALUES ('C002', 'Herbert', 'Dennis', 'hdennis@gmail.com', '(1) 135-5555', 'Avda. de la Constitución 2222 ');
INSERT INTO [Customers] VALUES ('C003', 'Garrett', 'Sanchez', 'gsanchez@gmail.com', '(5) 555-3392', 'Mataderos  2312 ');
INSERT INTO [Customers] VALUES ('C004', 'Curtis', 'Burke', 'curtisburke@gmail.com', '0452-076545', '120 Hanover Sq. ');
INSERT INTO [Customers] VALUES ('C005', 'Erma', 'Stephens', 'ermas@gmail.com', '(11) 555-7647', 'Berguvsvägen  8 ');
INSERT INTO [Customers] VALUES ('C006', 'Mable', 'Kim', 'mkim@gmail.com', '(171) 555-2282', 'Forsterstr. 57 ');
INSERT INTO [Customers] VALUES ('C007', 'Brittany', 'Montgomery', 'bmontgomery@gmail.com', '0241-039123', '24, place Kléber ');
INSERT INTO [Customers] VALUES ('C008', 'Cynthia', 'Lopez', 'cynthial@gmail.com', '7675-3425', 'C/ Araquil, 67 ');
INSERT INTO [Customers] VALUES ('C009', 'Arthur', 'Soto', 'arthursoto@gmail.com', '(11) 555-9857', '12, rue des Bouchers ');
INSERT INTO [Customers] VALUES ('C010', 'Irving', 'Waters', 'irwingwaters@gmail.com', '(91) 555 94 44', '23 Tsawassen Blvd.');

INSERT INTO [Products] VALUES ('P001', 'Carnarvon Tigers', '16 kg pkg. ', '62.50 ');
INSERT INTO [Products] VALUES ('P002', 'Teatime Chocolate Biscuits', '10 boxes x 12 pieces', '9.20 ');
INSERT INTO [Products] VALUES ('P003', 'Sir Rodney''s Marmalade', '30 gift boxes', '81.00 ');
INSERT INTO [Products] VALUES ('P004', 'Sir Rodney''s Scones', '24 pkgs. x 4 pieces', '10.00 ');
INSERT INTO [Products] VALUES ('P005', 'Gustaf''s Knäckebröd', '24 - 500 g pkgs.', '21.00 ');
INSERT INTO [Products] VALUES ('P006', 'Tunnbröd', '12 - 250 g pkgs.', '9.00 ');
INSERT INTO [Products] VALUES ('P007', 'Guaraná Fantástica', '12 - 355 ml cans', '4.50 ');
INSERT INTO [Products] VALUES ('P008', 'NuNuCa Nuß-Nougat-Creme', '20 - 450 g glasses', '14.00 ');
INSERT INTO [Products] VALUES ('P009', 'Gumbär Gummibärchen', '100 - 250 g bags', '31.23 ');
INSERT INTO [Products] VALUES ('P010', 'Schoggi Schokolad', '100 - 100 g pieces', '43.90');

INSERT INTO Orders VALUES
	('ORD1', 'C005', '2024-03-31 16:15:57 ', '586'),
	('ORD2', 'C003', '2024-10-31 02:52:51 ', '456'),
	('ORD3', 'C010', '2024-04-24 03:12:32 ', '451'),
	('ORD4', 'C004', '2024-07-10 03:17:57 ', '264'),
	('ORD5', 'C001', '2024-03-24 11:38:38 ', '100'),
	('ORD6', 'C002', '2024-05-01 11:24:00 ', '894'),
	('ORD7', 'C008', '2024-02-01 09:27:40 ', '5400'),
	('ORD8', 'C009', '2024-06-14 14:18:19 ', '2500'),
	('ORD9', 'C006', '2024-04-17 23:23:39 ', '1080'),
	('ORD10', 'C007', '2024-11-04 23:49:06 ', '325')

INSERT INTO OrderDetails VALUES
	('ODT1', 'ORD1', 'P005', 28),
	('ODT2', 'ORD2', 'P002', 50),
	('ODT3', 'ORD3', 'P006', 40),
	('ODT4', 'ORD4', 'P001', 51),
	('ODT5', 'ORD5', 'P008', 100),
	('ODT6', 'ORD6', 'P003', 12),
	('ODT7', 'ORD7', 'P007', 8),
	('ODT8', 'ORD10', 'P004', 56),
	('ODT9', 'ORD10', 'P009', 19),
	('ODT10', 'ORD10', 'P010', 145);

INSERT INTO Inventory VALUES
	('IT01', 'P001', 500, '2024-04-06 16:44:38'),
	('IT02', 'P002', 400, '2024-02-06 16:15:23'),
	('IT03', 'P003', 400, '2024-01-09 14:55:35'),
	('IT04', 'P004', 800, '2023-11-18 15:25:55'),
	('IT05', 'P005', 1200, '2024-10-26 23:06:24'),
	('IT06', 'P006', 600, '2024-06-25 09:21:52'),
	('IT07', 'P007', 100, '2024-08-30 12:06:10'),
	('IT08', 'P008', 0, '2023-11-26 22:27:18'),
	('IT09', 'P009', 500, '2024-09-12 11:30:37'),
	('IT10', 'P010', 50, '2024-09-02 23:41:06');

-- Task 2 - 1
select FirstName + ' ' + LastName as [Customer Name], Email from Customers;

-- Task 2 - 2
select OrderId, OrderDate, FirstName + ' ' + LastName as [Customer Name] 
from Orders left join Customers on Orders.CustomerID = Customers.CustomerID;

-- Task 2 - 3
insert into Customers values ('C011', 'Jonh', 'Doe', 'johndoe@gmail.com', '(11) 555-9857', 'Rua Orós, 92');


-- Task 2 - 4
update Products set Price = 1.1 * Price;

--Task 2 - 5
declare @OrderIDToDelete varchar(5)
set @OrderIDToDelete = 'ORD5'
delete from OrderDetails where OrderID = @OrderIDToDelete
delete from Orders where OrderID = @OrderIDToDelete

set @OrderIDToDelete = 'ORD5'
select * from Orders where OrderID = @OrderIDToDelete
select * from OrderDetails where OrderID = @OrderIDToDelete

-- Task 2 - 6
INSERT INTO OrderDetails VALUES ('ODT11', 'ORD7', 'P009', 47);

-- Task 2 - 7
declare @CustomerIDToUpdate varchar(5), @NewEmail varchar(255), @NewPhone varchar(20), @NewAddress varchar(100)
set @CustomerIDToUpdate = 'C008'
set @NewEmail = 'lopezcynthia@gmail.com'
set @NewPhone = '(509) 555-7969'
set @NewAddress = 'South House 300 Queensbridge'
update Customers set Email = @NewEmail, Phone = @NewPhone, Address = @NewAddress where CustomerID=@CustomerIDToUpdate;
select * from Customers where CustomerID = @CustomerIDToUpdate;
begin tran t1;

-- Task 2 - 8
UPDATE Orders SET TotalAmount = (
    SELECT SUM(OrderDetails.Quantity * Products.Price) FROM OrderDetails
    JOIN Products ON OrderDetails.ProductID = Products.ProductID
    WHERE OrderDetails.OrderID = Orders.OrderID
);
select * from Orders;
-- Task 2 - 9
declare @CustomerID varchar(5)
set @CustomerID = 'C005'
delete from OrderDetails where OrderID in (select OrderID 
from Orders where CustomerID = @CustomerID)
delete from Orders where CustomerID = @CustomerID

select * from OrderDetails;
select * from Orders;

-- Task 2 - 10
INSERT INTO Products VALUES ('P011', 'IQOO Z6', 'Snapdragon® 695 5G Mobile Platform, 120Hz FHD+ Display', 20990.00);
select * from Products;
-- Task 2 - 11
alter table Orders add Status varchar(10);
alter table Orders add constraint DF_Status default 'Pending' for Status;
update Orders set Status = 'Pending';

declare @OrderID varchar(5), @NewStatus varchar(10)
set @OrderID = 'ORD10';
set @NewStatus = 'Shipped'
update Orders set Status = @NewStatus where OrderID = @OrderID;

select * from Orders;

-- Task 2 - 12
select CustomerID, count(CustomerID) [Orders Placed] from orders group by CustomerID;

-- Task 3 - 1
select C.*, O.OrderID from Customers as C left join Orders as O on C.CustomerID = O.CustomerID;

-- Task 3 - 2
select P.ProductName, sum(Quantity) * sum(P.Price) as TotalRevenue 
from OrderDetails as O 
left join Products as P on O.ProductID=P.ProductID 
group by P.ProductName;

-- Task 3 - 3
select FirstName, LastName, Email, Phone, Address from Customers as C 
right join Orders as O on C.CustomerID = O.CustomerID;

-- Task 3 - 4
select P.ProductName, sum(Quantity) as [Quantity Ordered] from OrderDetails as O left join Products as P 
on O.ProductID=P.ProductID group by ProductName order by [Quantity Ordered] desc;

-- Task 3 - 5
-- Write an SQL query to retrieve a list of electronic gadgets along with their corresponding categories.


-- Task 3 - 6
select C.FirstName, C.LastName, O.TotalAmount / count(C.CustomerID) as [Average Order Value] 
from Orders as O left join Customers as C on O.CustomerID=C.CustomerID 
group by C.CustomerID, C.FirstName, C.LastName, O.TotalAmount;

-- Task 3 - 7	
select O.OrderID, C.*, O.TotalAmount as [Total Revenue] from Orders as O 
left join Customers as C on O.CustomerID=C.CustomerID 
where TotalAmount = (select max(TotalAmount) from Orders);

-- Task 3 - 8
select ProductName, count(*) as [Order Frequency] from OrderDetails as O 
left join Products as P on O.ProductID = P.ProductID 
group by O.ProductID, ProductName;

-- Task 3 - 9
declare @ProductName varchar(30)
set @ProductName = 'Gumbär Gummibärchen'
select (select concat(FirstName, ' ', LastName) from Customers 
where O.CustomerID=Customers.CustomerID) as [Customer Name], O.OrderDate, O.TotalAmount, O.Status 
from OrderDetails as OD left join Orders as O on OD.OrderID = O.OrderID 
where ProductID = (select ProductID from Products where ProductName = @ProductName);

-- Task 3 - 10
declare @StartDate datetime;
declare @EndDate datetime;
set @StartDate = '2024-07-10'
set @EndDate = '2024-11-04'
select sum(TotalAmount) as [Revenue Generated] from orders 
where OrderDate > @StartDate and OrderDate < @EndDate;

-- Task 4 - 1
select * from Customers where CustomerID not in (select CustomerID from Orders);

-- Task 4 - 2
select * from Products where (select QuantityInStock from Inventory 
where Inventory.ProductID = Products.ProductID) > 0;

-- Task 4 - 3
select sum(TotalAmount) as [Total Revenue Generated] from Orders;

-- Task 4 - 4
-- Write an SQL query to calculate the average quantity ordered for products in a specific category.
-- Allow users to input the category name as a parameter.

-- Task 4 - 5
declare @CustomerIDToSearch varchar(5), @temp varchar(100)
set @CustomerIDToSearch = 'C002'
select TotalAmount as [Revenue Generated] from Orders where Orders.CustomerID= @CustomerIDToSearch;

-- Task 4 - 6
select C.FirstName, C.LastName, sum(Quantity) as [Order Quantity] 
from OrderDetails as OD 
left join Orders as O 
	on OD.OrderID = O.OrderID 
left join Customers as C 
	on C.CustomerID=O.CustomerID 
group by C.CustomerID, C.FirstName, C.LastName
order by [Order Quantity] desc;

-- Task 4 - 7
select ProductID, (select ProductName from Products where Products.ProductID = OrderDetails.ProductID) as [Product Name],
sum(Quantity) as [Quantity Ordered] 
from OrderDetails 
group by ProductID 
order by [Quantity Ordered] desc;

-- Task 4 - 8
select top 1 
	(select FirstName from Customers where CustomerID=Orders.CustomerID) as FirstName,
	(select LastName from Customers where CustomerID=Orders.CustomerID) as LastName, 
	Orders.TotalAmount as [Total Spending] 
from Orders 
order by TotalAmount desc;

-- Task 4 - 9
select (select CustomerID from Customers where CustomerID = C.CustomerID) as [CustomerID], 
(select sum(TotalAmount) from Orders)/count(OD.OrderDetailID) as [Average Order Value] 
from OrderDetails as OD 
left join Orders as O on OD.OrderID=O.OrderID 
left join Customers as C on O.CustomerID=C.CustomerID 
group by O.OrderID, C.CustomerID;

-- Task 4 - 10
select (select FirstName from Customers where Customers.CustomerID = Orders.CustomerID) as FirstName, 
(select LastName from Customers where Customers.CustomerID = Orders.CustomerID) as LastName, 
count(OrderID) as [Orders Placed] 
from Orders 
group by CustomerID;


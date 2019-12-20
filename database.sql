create database Assignment
go
use Assignment
go

create table Customers
(
     account varchar(30) primary key,
	 pass   varchar(30), 
     fullname nvarchar(30),
     email varchar(30),
     phone varchar(11),
	 job nvarchar(30),
	 other nvarchar(30)
)
go


create table Products(
	ID nvarchar(8) primary key,
	[name] nvarchar(30),
	category nvarchar(30),
	[image] varchar(100),
	price float
)
go

insert into Products values('1', N'Áo sơ mi đen cộc tay', 'MSM', 'Images/Nam_02.jpg', 200000)
insert into Products values('2', N'Áo sơ mi đen dài tay', 'MSM', 'Images/Nam_04.jpg', 220000)
insert into Products values('3', N'Áo sơ mi trắng kiểu 1', 'MSM', 'Images/Nam_03.jpg', 250000)
insert into Products values('4', N'Áo sơ mi trắng kiểu 2', 'MSM', 'Images/Nam_05.jpg', 250000)
insert into Products values('5', N'Áo sơ mi hồng', 'MSM', 'Images/Nam_06.jpg', 210000)
insert into Products values('6', N'Quần jean', 'MQ', 'Images/Nam_01.jpg', 300000)
insert into Products values('7', N'Quần kaki', 'MQ', 'Images/Nam_07.jpg', 300000)
insert into Products values('8', N'Quần cộc', 'MQ', 'Images/Nam_08.jpg', 100000)


INSERT into dbo.Customers (account, pass, fullname, email, phone, job, other) VALUES('abc', '123', 'def', 'abc@gmail.com.vn', '123456789', 'ff', 'er') 

select * from Products WHERE name like N'%%'

Update dbo.Customers set fullname = 'Lam', email = 'abc@gmail.com' where account = 'abc'

select * from dbo.Customers

insert into Products values('1', N'Áo sơ mi nam SM013', 'MSM', 'Images/SM013.jpg', 250000)
insert into Products values('2', N'Áo sơ mi nam SM014', 'MSM', 'Images/SM014.jpg', 280000)
insert into Products values('3', N'Áo sơ mi nam SM021', 'MSM', 'Images/SM021.jpg', 295000)
insert into Products values('4', N'Áo sơ mi nam SM024', 'MSM', 'Images/SM024.jpg', 330000)
insert into Products values('5', N'Áo sơ mi nữ SM116', 'FSM', 'Images/SM116.jpg', 190000)
insert into Products values('6', N'Áo sơ mi nữ SM122', 'FSM', 'Images/SM122.jpg', 165000)
insert into Products values('7', N'Áo thun nam AT001', 'MT', 'Images/AT001.jpg', 110000)
insert into Products values('8', N'Áo thun nam AT032', 'MT', 'Images/AT032.jpg', 175000)
insert into Products values('9', N'Áo thun nữ AT105', 'FT', 'Images/AT105.jpg', 130000)
insert into Products values('10', N'Áo thun nữ AT118', 'FT', 'Images/AT118.jpg', 130000)
insert into Products values('11', N'Áo polo nam AP002', 'MT', 'Images/AP002.jpg', 485000)
insert into Products values('12', N'Áo polo nam AP015', 'MT', 'Images/AP015.jpg', 210000)
insert into Products values('13', N'Quần nam Q003', 'MQ', 'Images/Q003.jpg', 370000)
insert into Products values('14', N'Quần nam Q011', 'MQ', 'Images/Q011.jpg', 440000)
insert into Products values('15', N'Quần nam Q042', 'MQ', 'Images/Q042.jpg', 350000)
insert into Products values('16', N'Quần nam Q055', 'MQ', 'Images/Q055.jpg', 215000)
insert into Products values('17', N'Quần nữ Q107', 'FQ', 'Images/Q107.jpg', 345000)
insert into Products values('18', N'Quần nữ Q121', 'FQ', 'Images/Q121.jpg', 300000)
insert into Products values('19', N'Váy nữ V104', 'FQ', 'Images/V104.jpg', 260000)
insert into Products values('20', N'Váy nữ V110', 'FQ', 'Images/V110.jpg', 190000)
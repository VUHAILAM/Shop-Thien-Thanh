create database Assignment
go
use Assignment
go

create table Customers
(
     account varchar(30) primary key,
	 pass   varchar(30) 
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

insert into Products values('1', 'Áo sơ mi đen cộc tay', 'MSM', 'Images/Nam_02.jpg', 200000)
insert into Products values('2', 'Áo sơ mi đen dài tay', 'MSM', 'Images/Nam_04.jpg', 220000)
insert into Products values('3', 'Áo sơ mi trắng kiểu 1', 'MSM', 'Images/Nam_03.jpg', 250000)
insert into Products values('4', 'Áo sơ mi trắng kiểu 2', 'MSM', 'Images/Nam_05.jpg', 250000)
insert into Products values('5', 'Áo sơ mi hồng', 'MSM', 'Images/Nam_06.jpg', 210000)
insert into Products values('6', 'Quần jean', 'MQ', 'Images/Nam_01.jpg', 300000)
insert into Products values('7', 'Quần kaki', 'MQ', 'Images/Nam_07.jpg', 300000)
insert into Products values('8', 'Quần cộc', 'MQ', 'Images/Nam_08.jpg', 100000)

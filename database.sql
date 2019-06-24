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
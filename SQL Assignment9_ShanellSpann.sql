--1.
use MyGuitarShop;
create index IX_Addresses_ZipCode
on Addresses (ZipCode);

--2.
use master;
if exists (select * from sys.databases
where name='MyWebDB')
drop database MyWebDB;
go

create database MyWebDB;
go

use MyWebDB;
create table Users
(UserID			int				not null primary key,
EmailAddress	varchar(50)		null,
FirstName		varchar(50)		null,
LastName		varchar(50)		null);

create table Products
(ProductID		int				not null primary key,
ProductName		varchar(50)		null);

create table Downloads
(DownloadID		int				not null primary key,
UserID			int				not null references Users (UserID),
DownloadDate	smalldatetime	null,
FileName		varchar(50)		null,
ProductID		int				not null references Products (ProductID));

create index IX_Downloads_UserID
on Downloads (UserID);
create index IX_Downloads_ProductID
on Downloads (ProductID);


--3.
use MyWebDB;
insert into Users
values 
	(1, 'xiomara@gmail.com', 'Xiomara', 'Johnson'),
	(2, 'kenya@yahoo.com', 'Kenya', 'Jones');

go
insert into Products
values 
	(1, 'Xylophone 3000'),
	(2, 'Harmonica Ultra');

go
insert into Downloads
values 
	(1, 1, getdate(), 'file 1.txt', 2),
	(2, 2, getdate(), 'file 2.txt', 1),
	(3, 2, getdate(), 'file 3.txt', 2);

go
select u.EmailAddress as email_address,
	u.FirstName as first_name,
	u.LastName as last_name,
	d.DownloadDate as download_date,
	d.FileName as filename,
	p.ProductName as product_name
from Downloads d
join Users u
on u.UserID = d.UserID
join Products p
on p.ProductID = d.UserID
order by EmailAddress desc, ProductName asc


--4.
use MyWebDB;
alter table Products
add ProductPrice numeric(5,2) default 9.99;

go
alter table Products
add DateProductAdded smalldatetime default getdate();


--5.
use MyWebDB;
alter table Users
alter column FirstName varchar(20) not null;

use MyWebDB;
update Users
set FirstName = null
where UserID = 1;

use MyWebDB;
update Users
set FirstName = 'Venkatanarasimharajuvaripeta'
where UserID = 1;
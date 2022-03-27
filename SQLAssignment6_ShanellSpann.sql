--1.
insert into Categories (CategoryName)
values ('Brass');

--2. 
update Categories
set CategoryName = 'Woodwinds'
where CategoryID = 5;

--3.
delete from Categories
where CategoryID = 5;

--4. 
insert into Products
	(CategoryID, ProductCode, ProductName, Description, ListPrice, DiscountPercent, DateAdded)
values
	(4, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, 0, CURRENT_TIMESTAMP);

--5.
update Products
set DiscountPercent = 35
where ProductID = 11;

--6.
delete from Products
where CategoryID = 4;
delete from Categories
where CategoryID = 4;

--7.
insert into Customers
	(EmailAddress, Password, FirstName, LastName)
values
	('rick@raven.com', '', 'Rick', 'Raven');

--8.
update Customers
set Password = 'secret'
where EmailAddress = 'rick@raven.com';

--9.
update Customers
set Password = 'reset';


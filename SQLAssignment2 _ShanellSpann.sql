--1.
Select ProductName, ListPrice, DateAdded
From Products
Order by ProductName asc

--2.
Select *
From Categories
Order by CategoryID desc

--3.
Select CustomerID, Line1, Line2, City, State, ZipCode
From Addresses
Where State = 'NY'

--4.
Select OrderId, ShipAmount, CardType, CardNumber, CardExpires
From Orders ord
Where CardType = 'Visa'
Order by OrderDate asc

--5. 
Select ProductName, ListPrice
From Products

--6. 
Select *
From OrderItems
Where DiscountAmount > 1000

--7.
Select *
From Administrators
Order by LastName

--8. 
Select FirstName, LastName, EmailAddress
From Customers
Where LastName > 'M'
Order by LastName

--9. 
Select *
From OrderItems
Where ItemID > 30

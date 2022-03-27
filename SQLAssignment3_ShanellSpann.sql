--2.
Select ProductCode, ProductName, ListPrice, DiscountPercent
From Products
Order by ListPrice desc

--3.
Select LastName + ', ' + FirstName AS FullName
From Customers
Where LastName > 'M'
Order by LastName asc

--4.
Select ProductName AS [The ProductName column], ListPrice AS [The ListPrice column], DateAdded AS [The DateAdded column]
From Products
Where ListPrice > 500 AND ListPrice < 2000
Order by DateAdded desc

--5. 
Select ProductName AS [The ProductName column], ListPrice AS [The ListPrice column], DiscountPercent AS [The DiscountPercent column], ListPrice * (DiscountPercent * .01) AS DiscountAmount, ListPrice - (ListPrice * (DiscountPercent * .01)) AS DiscountPrice
From Products
Order by DiscountPrice desc

--6.
Select ItemID AS [The ItemID column], ItemPrice AS [The ItemPrice column], DiscountAmount AS [The DiscountAmount column], Quantity AS [The Quantity column], ItemPrice * Quantity AS PriceTotal, DiscountAmount * Quantity AS DiscountTotal, (ItemPrice - DiscountAmount) * Quantity AS ItemTotal
From OrderItems
Where (ItemPrice - DiscountAmount) * Quantity > 500
Order by ItemTotal desc

--7. 
Select OrderID AS [The OrderID column], OrderDate AS [The OrderDate column], ShipDate AS [The ShipDate column]
From Orders
Where ShipDate IS NULL


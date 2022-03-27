--1.
SELECT COUNT(*) As NumberOfOrders, SUM(TaxAmount)
FROM Orders

--2. 
SELECT CategoryName, Products, ListPrice
FROM Categories

--3.
SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers JOIN Addresses
ON Customers.CustomerID = Addresses.CustomerID
WHERE AddressID = ShippingAddressID;

--4.
SELECT LastName, FirstName, OrderDate, ProductName, ItemPrice, DiscountAmount, Quantity
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
JOIN OrderItems AS oi ON o.OrderID = oi.OrderID
JOIN Products AS p ON oi.ProductID = p.ProductID
ORDER BY LastName, OrderDate, ProductName;

--6.
SELECT CategoryName, ProductID
FROM Categories FULL JOIN Products
ON Categories.CategoryID = Products.CategoryID
WHERE Products.CategoryID IS NULL;

--7.
SELECT 'NOT SHIPPED' AS ShipStatus, OrderID, OrderDate
	FROM Orders
	WHERE ShipDate IS NULL
UNION
	SELECT 'SHIPPED' AS ShipStatus, OrderID, OrderDate
	FROM Orders
	WHERE ShipDate IS NOT NULL
ORDER BY OrderDate;

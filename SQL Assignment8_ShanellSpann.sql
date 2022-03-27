--1.
SELECT ListPrice, DiscountPercent, round(((DiscountPercent / 100) * ListPrice), 2) as DiscountAmount
FROM Products;

--2. 
SELECT OrderDate, year(OrderDate) AS OrderYear, day(OrderDate) AS DayOnly, dateadd(day, 30, OrderDate) AS DueDate
FROM Orders;

--3.
SELECT CardNumber, len(CardNumber) AS CardNumberLegnth, right(CardNumber, 4) AS LastFourDigits, 'XXXX-XXXX-XXXX-' + right(CardNumber, 4) AS FormattedNumber
FROM Orders;

--4.
SELECT OrderID, OrderDate, dateadd(day, 2, OrderDate) as AproxShipDate, ShipDate, datediff(day, OrderDate, ShipDate) as DaysToShip
FROM Orders
WHERE month(OrderDate) = 3 and year(OrderDate) = 2012;

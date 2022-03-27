--11.
SELECT ListPrice,
	CAST(ListPrice AS decimal(10, 1)) AS ListPriceCast,
    CONVERT(decimal(10, 1), ListPrice) AS ListPriceConvert,
    CAST(ListPrice AS int) AS ListPriceInteger
FROM Products

--12.
SELECT DateAdded,
	format(cast(DateAdded as date), 'MM/dd/yyyy') as AddedDate,
	cast(DateAdded as time(0)) as AddedTime,
	format(cast(DateAdded as date), 'M') as AddedChar7
FROM Products;
--13.
SELECT 
	convert (varchar, OrderDate, 1) as OrderDateConverted,
	convert (varchar, OrderDate, 0) as AMPM,
	convert (varchar, OrderDate, 14) as OrderTime
FROM Orders;
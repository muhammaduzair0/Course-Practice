SELECT
OrderDate,
ShipDate,
DATEDIFF(day, OrderDate, ShipDate) AS HowManyDays,
DATEDIFF(month, OrderDate, ShipDate) AS HowManyMonths,
DATEDIFF(year, OrderDate, ShipDate) AS HowManyMonths
FROM SALES.Orders

-- Calculate the age of employees

SELECT 
EmployeeID,
BirthDate,
DATEDIFF(year, BirthDate, GETDATE()) AS Age
FROM Sales.Employees

-- Find the average shipping duration in days for each month

SELECT
MONTH(OrderDate) AS OrderDate,  
AVG(DATEDIFF(day, OrderDate, ShipDate)) AS AvgShipping
FROM Sales.Orders
GROUP BY MONTH(OrderDate)


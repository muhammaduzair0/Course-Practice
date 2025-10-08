SELECT
OrderDate,
ShipDate,
DATEDIFF(day, OrderDate, ShipDate) AS HowManyDays,
DATEDIFF(month, OrderDate, ShipDate) AS HowManyMonths,
DATEDIFF(year, OrderDate, ShipDate) AS HowManyMonths
FROM SALES.Orders


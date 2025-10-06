-- Date Trunc Function

SELECT
DATETRUNC(month, CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(month, CreationTime)

SELECT
DATETRUNC(year, CreationTime) Creation,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(year, CreationTime)

SElECT
OrderID,
CreationTime,
DATETRUNC(second, CreationTime) second_dt,
DATETRUNC(minute, CreationTime) Minute_dt,
DATETRUNC(hour, CreationTime) Hour_dt,
DATETRUNC(day, CreationTime) Day_dt,
DATETRUNC(month, CreationTime) Month_dt,
DATETRUNC(year, CreationTime) Year_dt
FROM Sales.Orders
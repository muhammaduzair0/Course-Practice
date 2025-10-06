-- Date Name Function

SELECT
ORDERID,
CreationTime,
DATENAME(day, CreationTime) Day_dn,
DATENAME(weekday, CreationTime) WeekDay_dn,
DATENAME(month, CreationTime) Date_dn,
DATENAME(year, CreationTime) Year_dn
FROM Sales.Orders
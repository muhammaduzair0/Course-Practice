-- End of the month Function

SELECT 
OrderID,
CreationTime,
EOMONTH(CreationTime) EndOfTheMonth_Eom,
CAST(DATETRUNC(month, CreationTime) AS DATE) StartOfTheMonth_dt
From Sales.Orders
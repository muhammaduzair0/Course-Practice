SELECT *
FROM Sales.Orders

SELECT 
* 
INTO #Orders
FROM Sales.Orders

SELECT 
* 
INTO Sales.OrdersTest
FROM #Orders


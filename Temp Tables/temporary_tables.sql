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

DELETE FROM #Orders
WHERE OrderStatus = 'Delivered'

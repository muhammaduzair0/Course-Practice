-- Calculate the moving average of sales for each product over time

SELECT
OrderID,
OrderDate,
ProductID,
Sales,
AVG(Sales) Over(PARTITION BY ProductID) AvgSalesByProduct,
AVG(Sales) Over(PARTITION BY ProductID ORDER BY OrderDate) MovingAvg
FROM Sales.Orders

-- Calculate the moving average of sales for each product over time, including the next order

SELECT
OrderID,
OrderDate,
ProductID,
Sales,
AVG(Sales) Over(PARTITION BY ProductID) AvgSalesByProduct2,
AVG(Sales) Over(PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) RollingAvg
FROM Sales.Orders

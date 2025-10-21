-- Calculate the moving average of sales for each product over time

SELECT
OrderID,
OrderDate,
ProductID,
Sales,
AVG(Sales) Over(PARTITION BY ProductID) AvgSalesByProduct,
AVG(Sales) Over(PARTITION BY ProductID ORDER BY OrderDate) MovingAvg
FROM Sales.Orders


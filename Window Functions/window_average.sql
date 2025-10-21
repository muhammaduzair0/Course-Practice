-- Find the Average Sales for each product

SELECT *
FROM Sales.Orders

SELECT
    OrderID,
    ProductID,
    OrderDate,
    Sales,
    AVG(Sales) OVER(PARTITION BY ProductID) AvgSales
-- AVG(COALESCE(Sales, 0)) OVER(PARTITION BY ProductID) AvgSales (HandlingNulls)
FROM Sales.Orders


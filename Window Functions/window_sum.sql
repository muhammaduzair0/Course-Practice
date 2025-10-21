-- Find the total sales for each product

SELECT *
FROM Sales.Orders

SELECT
    ProductID,
    Sales,
    SUM(Sales) OVER(PARTITION BY ProductID) TotalSales
FROM Sales.Orders


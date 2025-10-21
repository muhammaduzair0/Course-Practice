-- Find the total sales for each product

SELECT *
FROM Sales.Orders

SELECT
    ProductID,
    Sales,
    SUM(Sales) OVER(PARTITION BY ProductID) TotalSales
FROM Sales.Orders

/* Find the total sales across all orders
and the total sales for each product */
-- Additionally, provide details such as OrderID, and Order Date

SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    SUM(Sales) OVER() TotalSales,
    SUM(Sales) OVER(PARTITION BY ProductID) SalesByProduct
FROM Sales.Orders


-- Find the percentage contribution of each product's sales to the total sales.

SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    SUM(Sales) OVER() TotalSales,
    ROUND(CAST(Sales AS FLOAT) / SUM(Sales) OVER() * 100,2) PercentageOfTotal
FROM Sales.Orders

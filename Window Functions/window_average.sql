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

/* Find the average sales across all orders 
and the average sales for each product */
-- Additionally, provide details such as OrderID, order date

SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    AVG(Sales) Over() AvgSales,
    AVG(Sales) Over(PARTITION BY ProductID) AvgSalesByProducts
FROM Sales.Orders


-- Find the highest and lowest sales of all orders
-- Find the highest and lowest sales for each product
-- Additionally provide details such orderID, OrderDate

SELECT *
FROM Sales.Orders

SELECT
    OrderID,
    ProductID,
    OrderDate,
    Sales,
    MIN(Sales) OVER() LowestSales,
    MAX(Sales) OVER() HighestSales,
    MIN(Sales) OVER(PARTITION BY ProductID) LowestSalesByProduct,
    MAX(Sales) OVER(PARTITION BY ProductID) HighestSalesByProduct
FROM Sales.Orders


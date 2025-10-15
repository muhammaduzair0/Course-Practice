-- Find the total sales across all orders
-- Find the total sales for each orders

SELECT 
    ProductID,
    SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY ProductID

/* Find the total sales for each product
    Additionally provide details such orderID, Order Date */

SELECT 
    OrderID,
    OrderDate,
    ProductID,
    SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProducts
FROM Sales.Orders
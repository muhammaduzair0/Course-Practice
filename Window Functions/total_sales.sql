-- Find the total sales across all orders
-- Find the total sales for each orders

SELECT 
    ProductID,
    SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY ProductID


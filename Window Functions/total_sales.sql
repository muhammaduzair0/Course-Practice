-- Find the total sales across all orders
-- Find the total sales for each orders

SELECT 
    ProductID,
    SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY ProductID

-- Find the total sales for all orders
-- Find the total sales for each product
-- Find the total sales for each combination of product and order status
-- Additionally provide details such orderID, Order Date 

SELECT 
    OrderID,
    OrderDate,
    ProductID,
    OrderStatus,
    Sales,
    SUM(Sales) Over() TotalSales,
    SUM(Sales) OVER(PARTITION BY ProductID) SalesByProducts,
    SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) TotalSalesByProductAndStatus
FROM Sales.Orders


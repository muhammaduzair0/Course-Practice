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

-- Rank each order based on their sales from highest to lowest
-- Additionally provide details such orderID, Order Date.

SELECT 
    OrderID,
    OrderDate,
    Sales,
    RANK() OVER(ORDER BY Sales DESC) RankSales
FROM Sales.Orders

SELECT *
FROM Sales.Orders

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) AS TotalSales
FROM Sales.Orders

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate ROWS 2 PRECEDING) AS TotalSales -- Shortcut only for preceding
FROM Sales.Orders

-- Default Frame even IF we don't mention and just use Order By Clause

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
-- SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate) AS TotalSales 
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS TotalSales -- Default Frame
FROM Sales.Orders

-- Find the total sales for each order status, Only for two product 101 and 102

SELECT
ProductID,
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY OrderStatus)
FROM Sales.Orders
WHERE ProductID IN(101, 102)

-- Rank customers based on their total sales

SELECT
CustomerID,
SUM(Sales) TotalSales,
RANK() OVER(ORDER BY SUM(Sales) DESC) RankCustomers
FROM Sales.Orders
GROUP BY CustomerID
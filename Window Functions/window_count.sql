-- Find the total numbers of orders
-- Additionally provide details such orderID, order date

SELECT *
FROM Sales.Orders

SELECT
    OrderID,
    OrderDate,
    CustomerID,
    COUNT(*) OVER() TotalOrders,
    COUNT(*) OVER(PARTITION BY CustomerID) OrdersByCustomers
FROM Sales.Orders


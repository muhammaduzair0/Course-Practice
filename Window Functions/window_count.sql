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

-- Check whether the table 'Orders' contains any duplicate rows

SELECT
    OrderID,
    COUNT(*) OVER(PARTITION BY OrderID) CheckPK
FROM Sales.Orders

-- Check whether the table 'Orders' contains any duplicate rows in OrderArchive

SELECT
    OrderID,
    COUNT(*) OVER(PARTITION BY OrderID) CheckPK
FROM Sales.OrdersArchive

SELECT
    *
FROM(
    SELECT
        OrderID,
        COUNT(*) OVER(PARTITION BY OrderID) CheckPK
    FROM Sales.OrdersArchive
)t
WHERE CheckPK > 1
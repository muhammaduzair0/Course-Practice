-- Count how many times each customer has made and order with sales greater than 30

SELECT
    CustomerID,
    SUM (CASE
        WHEN Sales > 30 THEN 1
        ELSE 0
    END) TotalOrdersHighSales,
    COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID
-- Show all customer details and find the total orders for each customers

SELECT 
c.*,
o.TotalOrders
FROM Sales.Customers c
LEFT JOIN (
SELECT
CustomerID,
COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID) o
ON c.CustomerID = o.CustomerID
SELECT
    o.Sales,
    c.Country
FROM Sales.Orders o
LEFT JOIN Sales.Customers c WITH (FORCESEEK)
ON o.CustomerID = c.CustomerID
--  (HASH JOIN)
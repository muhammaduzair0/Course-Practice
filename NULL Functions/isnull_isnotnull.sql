-- Identify the customers who have no scores

SELECT *
FROM Sales.Customers
WHERE Score IS NULL

-- List all customers who have scores

SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL

-- List all details for customers who have not placed any orders

SELECT c.*,
o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL
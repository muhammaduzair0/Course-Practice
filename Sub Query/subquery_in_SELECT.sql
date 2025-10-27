-- Show the product IDs, names, prices and total number of orders

-- Main Query
SELECT
ProductID,
Product,
Price, 
-- Subquery
(SELECT COUNT(*) TotalOrders FROM Sales.Orders) TotalOrders
From Sales.Products
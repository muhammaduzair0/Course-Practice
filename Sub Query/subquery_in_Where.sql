-- Find the products that have a price higher than the average price of all products


SELECT
*
From Sales.Products

-- Main Query
SELECT
Product,
Price,
(SELECT AVG(Price) From Sales.Products) AvgPrice
From Sales.Products
WHERE Price > (SELECT AVG(Price) From Sales.Products)
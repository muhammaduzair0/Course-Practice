-- Find the sales price for each order by
-- dividing the sales by the quantity

SELECT 
OrderID,
Sales,
Quantity,
Sales / NULLIF(Quantity,0) AS Price
FROM Sales.Orders
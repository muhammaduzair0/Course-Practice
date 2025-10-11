-- Sort the customers from the lowest to highest scores
-- with nulls appearing last

SELECT 
CustomerID,
Score,
-- COALESCE(Score, '') AS Score2,
CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS Flag
FROM Sales.Customers
--ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score ASC
SELECT 
CustomerID,
Score,
COALESCE(Score, '') AS Score2
--CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS Flag
FROM Sales.Customers
--ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score ASC
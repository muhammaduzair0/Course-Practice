-- Find the lowest and highest sales for each product
-- Find the difference in sale between the current and the lowest sales

SELECT
OrderID,
ProductID,
Sales,
FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) LowestSales,
LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) HighestSales,
Sales - FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) SalesDifference
FROM Sales.Orders

-- SELECT
-- OrderID,
-- ProductID,
-- Sales,
-- FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) LowestSales,
-- LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) HighestSales,
-- FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales DESC) HighestSales2,
-- MIN(Sales) OVER(PARTITION BY ProductID) LowestSales2,
-- MAX(Sales) OVER(PARTITION BY ProductID) HighestSales3
-- FROM Sales.Orders
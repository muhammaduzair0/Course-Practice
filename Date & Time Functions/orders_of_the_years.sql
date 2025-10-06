-- How many orders were placed in each year?

SELECT 
YEAR(OrderDate) AS Order_Year,
COUNT(*) AS NrOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)


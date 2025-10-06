-- How many orders were placed in each year?

SELECT 
YEAR(OrderDate) AS Order_Year,
COUNT(*) AS NrOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)

-- Show all orders that were placed during the month of February

SELECT 
    OrderID,
    DATENAME(month, OrderDate) AS OrderMonth
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2


SELECT
DATENAME(MONTH, OrderDate) AS OrderMonth,
COUNT(*) AS Total_order
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2
GROUP BY DATENAME(MONTH, OrderDate)
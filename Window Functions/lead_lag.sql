/* Analyze the month-over-month(MoM) performance by finding
    the percentage change in sales between the current and previous month */

SELECT *,
    CurrentMonthSales -  PreviousMonthSales AS Mom_Change,
    ROUND(CAST((CurrentMonthSales -  PreviousMonthSales) AS FLOAT) / PreviousMonthSales * 100, 1) AS MoM_PercentageChange
FROM(
SELECT
        MONTH(OrderDate) OrderMonth,
        SUM(Sales) CurrentMonthSales,
        LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) PreviousMonthSales
    FROM Sales.Orders
    GROUP BY MONTH(OrderDate))t
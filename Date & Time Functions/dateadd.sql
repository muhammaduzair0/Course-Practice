SELECT
DATEADD(year, 4, '2025-11-22') AS AddTwoYears,
DATEADD(month, 4, '2025-06-22') AS AddTwoMonths,
DATEADD(day, 4, '2025-11-8') AS AddTwoDays

SELECT
DATEADD(year, -4, '2025-11-22') AS MinusTwoYears,
DATEADD(month, -4, '2025-06-22') AS MinusTwoMonths,
DATEADD(day, -4, '2025-11-8') AS MinusTwoDays

SELECT
OrderID,
OrderDate,
DATEADD(day, -10 , OrderDate) AS TenDaysBefore,
DATEADD(month, 3  , OrderDate) AS ThreeMonthsLater,
DATEADD(year, 2 , OrderDate) AS TwoYearsLater
FROM Sales.Orders
SELECT
CreationTime,
CONVERT(INT, '123') AS [String to INT Convert],
CONVERT(DATE, '2025-08-20') AS [String to Date CONVERT],
CONVERT(DATE, CreationTime) AS [DateTime to Date CONVERT],
CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. to Style:32],
CONVERT(VARCHAR, CreationTime, 34) AS [EURO Std. to Style:34]
FROM Sales.Orders
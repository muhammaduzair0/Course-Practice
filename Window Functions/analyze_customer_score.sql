-- Analyze the scores in customer table

SELECT
Country,
COUNT(*) AS total_nr_customers,
SUM(Score) AS total_score,
AVG(Score) AS avg_score,
MAX(Score) AS highest_score,
MIN(Score) AS lowest_score
FROM Sales.Customers
GROUP BY Country
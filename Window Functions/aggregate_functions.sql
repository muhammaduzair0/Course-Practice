-- Find the total number of orders
-- Find the sales of all orders
-- Find the average sales of all orders
-- Find the highest sales of all orders
-- Find the lowest sales of all orders

SELECT
COUNT(*) AS total_nr_sales,
SUM(sales) AS total_sales,
AVG(sales) AS avg_sales,
MAX(sales) AS highest_sales,
MIN(sales) AS lowest_sales
FROM orders


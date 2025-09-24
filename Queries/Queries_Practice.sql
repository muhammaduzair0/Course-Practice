USE MyDatabase

-- Retrieve All Order Data 

SELECT *
FROM orders;

-- Retrieve All Customer Data 

SELECT *
FROM customers;

--  Retrieve each customer's name, country and score.

SELECT
	first_name,
	country,
	score
FROM customers;

-- Retrieve All Customer Data where score is greater than 500

SELECT *
FROM customers
WHERE score > 500;

-- Retrieve customers with a score not equal to 0

SELECT *
FROM customers
WHERE score != 0;


-- Retrieve customers from Germany

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany'

-- Retrieve customers from USA

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'USA'

-- Retrieve customers from UK

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'UK';

/* Retrieve all customers and
   sort the results by the highest score first. */

SELECT *
FROM customers
ORDER BY score DESC;


/* Retrieve all customers and
   sort the results by the lowest score first. */

SELECT *
FROM customers
ORDER BY score ASC;

/* Retrieve all customers and
   sort the results by the country and by the highest score. */

SELECT *
FROM customers
ORDER BY country ASC, score DESC;


-- Find the total score for each country

SELECT
	country,
	SUM(score) AS total_score 
FROM customers
GROUP BY country;


-- Find the total score and total customers for each country

SELECT
	country,
	COUNT(id) AS total_customers,
	SUM(score) AS total_score
FROM customers
GROUP BY country; 


-- Find the customers who have the score > 800

SELECT
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score) > 800;

/* Find the average score for each country
   considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430
*/

SELECT
	country,
	AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;

-- Return Unique list of all countries

SELECT DISTINCT
	country
FROM customers

-- Retrieve only 3 customers

SELECT TOP 3 *
FROM customers

-- Retrieve the Top 3 Customers with the Highest Scores

SELECT TOP 3 *
FROM customers
ORDER BY score Desc;


-- Retrieve the Top 2 Customers based on the score

SELECT TOP 2 *
FROM customers
ORDER BY score Asc;

-- Get the Two Most Recent Orders

SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC; 
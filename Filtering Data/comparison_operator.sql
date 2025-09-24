-- Retrieve all customers from Germany

SELECT * FROM customers;

SELECT *
FROM customers
WHERE country = 'Germany'

SELECT *
FROM customers
WHERE country != /* <> */ 'Germany';

SELECT *
FROM customers
WHERE score > 500

SELECT *
FROM customers
WHERE score < 750;

SELECT *
FROM customers
WHERE score >= 500

SELECT *
FROM customers
WHERE score <= 750;



/* Retrieve all customers who are from USA
	AND have a score greater than 500 */

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;


/* Retrieve all customers who are from USA
	OR have a score greater than 500 */

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;


-- Retrieve all customers with a score not less than 500

SELECT *
FROM customers
WHERE NOT score < 500;


/* Retrieve all customers whose score falls
	in the range between 100 and 500 */

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500;

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

-- Retrieve all customers from either GERMANY OR USA

SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA';

SELECT *
FROM customers
WHERE country IN ('Germany', 'USA')

-- Retrieve all customers NOT from either GERMANY OR USA

SELECT *
FROM customers
WHERE country NOT IN ('Germany', 'USA');


-- Find all customers whose first name starts with M


SELECT *
FROM customers

SELECT *
FROM customers
WHERE first_name LIKE 'M%'

-- Find all customers whose first name ends with n

SELECT *
FROM customers
WHERE first_name LIKE '%n'

-- Find all customers whose first name contains r

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

-- Find all customers whose first name has r in the third position 

SELECT *
FROM customers
WHERE first_name LIKE '__r%'
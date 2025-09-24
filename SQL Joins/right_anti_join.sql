-- Get all customers without matching customers

/* RIGHT ANTI JOIN: first you have to as it is join right table to left to check that both table data is not matching 
after that use WHERE Query to filter the data to check row is NULL */

SELECT *
FROM customers AS c
RIGHT JOIN orders as o
ON c.id = o.customer_id
WHERE c.id IS NULL


-- TASK

SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL
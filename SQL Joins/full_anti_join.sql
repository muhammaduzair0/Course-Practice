/* Find customers without orders
    and orders without customer */

SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id is NULL OR o.customer_id is NULL

-- Challenging TASK
/* Get all customers along with their orders,
    but only for customers who have placed an order
    (Without Using INNER JOIN) */

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id = o.customer_id OR o.customer_id = c.id

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL
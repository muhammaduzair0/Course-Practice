-- Get all customers who haven't placed any order

/* LEFT ANTI JOIN: first you have to as it is join left table to right to check that both table data is not matching 
after that use WHERE Query to filter the data to check row is NULL */

SELECT 
    c.first_name,
    c.id,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders as o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL
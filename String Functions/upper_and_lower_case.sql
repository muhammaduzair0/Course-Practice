-- Show a list of customers names in UPPER AND LOWER cases.
SELECT
first_name,
country,
UPPER(first_name) AS up_name, 
LOWER(first_name) AS low_name
FROM customers
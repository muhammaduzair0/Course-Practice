-- Show a list of customers names together with their country in one column.

SELECT
first_name,
country,
CONCAT(first_name,' ', country) AS name_country  
FROM customers
-- Count length of the first_name of customers

SELECT
    first_name,
    LEN(first_name) AS name_length
FROM customers
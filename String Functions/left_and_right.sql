-- Retrieve the first and last two characters of each first name.

SELECT
    first_name,
    LEFT(first_name, 2) AS first_2_characters,
    RIGHT(first_name, 2) AS last_2_characters
FROM customers
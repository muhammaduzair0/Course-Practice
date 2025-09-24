INSERT INTO customers (id, first_name, country, score)
VALUES
	(9, 'Andreas', 'Germany', 100)

SELECT * FROM customers;
 
-- Copy data from 'customers' table into 'persons'

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
id,
first_name as person_name,
NULL as birth_date,
'Unknown' as phone
FROM customers
SELECT * FROM persons
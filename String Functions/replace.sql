-- Remove dashes (-) from a phone number

SELECT
'123-456-789' AS phone_number,
-- REPLACE('123-456-789', '-', '')  AS clean_phone_number
REPLACE('123-456-789', '-', '/')  AS clean_phone_number

SELECT
'report.txt' AS txt_file,
REPLACE('report.txt', 'txt', 'csv') AS csv_file
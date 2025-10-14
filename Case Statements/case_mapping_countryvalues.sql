-- Retrieve customers details with abbreviated country code

SELECT
    CustomerID,
    FirstName,
    LastName,
    Country,
    CASE
        WHEN Country = 'Germany' THEN 'DE'
        WHEN Country = 'USA' THEN 'US'
        Else 'Country Not Available'
    END CountryAbbreviation,
    
    CASE Country
        WHEN 'Germany' THEN 'DE'
        WHEN 'USA' THEN 'US'
        Else 'Country Not Available'
    END CountryAbbreviation2
FROM Sales.Customers

SELECT DISTINCT Country
FROM Sales.Customers
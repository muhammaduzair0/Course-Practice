USE AdventureWorksDW2022
-- HEAP
SELECT *
INTO FactInternetSale_HP
FROM FactInternetSales

SELECT *
INTO FactInternetSale_RS
FROM FactInternetSales

CREATE CLUSTERED INDEX idx_FactInternetSales_RS_PK
ON FactInternetSale_RS (SalesOrderNumber, SalesOrderLineNumber)


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

-- ColumnStore
SELECT *
INTO FactInternetSale_CS
FROM FactInternetSales

CREATE CLUSTERED COLUMNSTORE INDEX idx_FactInternetSales_CS_PK
ON FactInternetSale_CS
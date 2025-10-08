-- Date Extraction with FORMAT() Function

SELECT
    OrderID,
    CreationTime,
    FORMAT(CreationTime, 'MM-dd-yyyy') USA_FORMAT,
    FORMAT(CreationTime, 'dd-MM-yyyy') EURO_FORMAT,
    FORMAT(CreationTime, 'dd/MM/yyyy') newDate,
    FORMAT(CreationTime, 'dd/MM/yyyy', 'jp-JP') date_JPN,
    FORMAT(CreationTime, 'dd') dd,
    FORMAT(CreationTime, 'ddd') ddd,
    FORMAT(CreationTime, 'dddd') dddd,
    FORMAT(CreationTime, 'MM') MM,
    FORMAT(CreationTime, 'MMM') MMM,
    FORMAT(CreationTime, 'MMMM') MMMM
FROM Sales.Orders


/* Show CreationTime using the following format:
    DAY WED JAN Q1 2025 12:34:56 PM */

SELECT
    ORDERID,
    CreationTime,
    'Day ' + FORMAT(CreationTime, 'ddd MMM') + ' Q'+ DATENAME(QUARTER, CreationTime)+ ' ' + FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS CustomFormat
FROM Sales.Orders

SELECT
    FORMAT(OrderDate, 'MMM yy') OrderDate,
    COUNT(*) NumberOfOrders
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')
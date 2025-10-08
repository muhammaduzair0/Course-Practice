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



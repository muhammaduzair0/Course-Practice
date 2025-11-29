SELECT
    tbl.name AS TableName,
    col.name AS IndexColumn,
    idx.name AS IndexName,
    idx.type_desc AS IndexType,
    COUNT(*) OVER(PARTITION BY tbl.name, col.name) ColumnCount
FROM sys.indexes idx

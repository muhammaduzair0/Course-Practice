-- Query lists all existing Partition Function

SELECT
    name,
    function_id,
    type,
    type_desc,
    boundary_value_on_right
FROM sys.partition_functions

-- Query lists all existing Filegroups

SELECT *
FROM sys.filegroups
WHERE type = 'FG'

-- Query lists all existing Filegroup, LogicalFileName, PhysicalName, FileSize

SELECT
    fg.name AS FilegroupName,
    mf.name AS LogicalFileName,
    mf.physical_name AS PhysicalFilePath,
    mf.size / 128 AS SizeInMB
FROM
    sys.filegroups fg
JOIN
    sys.master_files mf ON fg.data_space_id = mf.data_space_id
WHERE
    mf.database_id = DB_ID('SalesDB');


-- Query lists all Partition Scheme

SELECT
    ps.name AS PartitionSchemeName,
    pf.name AS PartitionFunctionName,
    ds.destination_id AS PartitionNumber,
    fg.name AS FilegroupName
FROM sys.partition_schemes ps
JOIN sys.partition_functions pf ON ps.function_id = pf.function_id
JOIN sys.destination_data_spaces ds ON ps.data_space_id = ds.data_space_id
JOIN sys.filegroups fg ON ds.data_space_id = fg.data_space_id

-- Query Lists all order Partitioned

SELECT
    p.partition_number AS PartitionNumber,
    f.name AS PartitionFileGroup,
    p.rows AS NumberOfRows
FROM sys.partitions p
JOIN sys.destination_data_spaces dds ON p.partition_number = dds.destination_id
JOIN sys.filegroups f ON dds.data_space_id = f.data_space_id
WHERE OBJECT_NAME(p.object_id) = 'Orders_Partitioned'

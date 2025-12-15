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


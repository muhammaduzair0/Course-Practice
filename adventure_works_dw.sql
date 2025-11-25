RESTORE DATABASE AdventureWorksDW2022
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\AdventureWorksDW2022.bak'
WITH MOVE 'AdventureWorksDW2022' 
     TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AdventureWorksDW2022.mdf',
     MOVE 'AdventureWorksDW2022_Log' 
     TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AdventureWorksDW2022_log.ldf',
     REPLACE;
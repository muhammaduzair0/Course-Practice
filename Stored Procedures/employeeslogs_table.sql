CREATE TABLE Sales.EmployeesLogs (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    LogMEssage VARCHAR(255),
    LogDate DATE
)
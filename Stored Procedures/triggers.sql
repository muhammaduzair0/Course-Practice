CREATE TRIGGER trg_AfterInsertEmployee ON Sales.Employees
AFTER INSERT
AS
BEGIN
    INSERT INTO Sales.EmployeesLogs(EmployeeID, LogMessage, LogDate)
    SELECT 
        EmployeeID,
        'New Employee Added =' + CAST(EmployeeID AS VARCHAR),
        GETDATE()
    FROM INSERTED
END

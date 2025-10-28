-- Find female employees whose salaries are greater than the salaries of any male employees

SELECT * 
FROM Sales.Employees

-- Main Query
SELECT 
EmployeeID,
FirstName,
Salary
FROM Sales.Employees WHERE Gender = 'F'
AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M') -- Subquery

SELECT FirstName, Salary FROM Sales.Employees WHERE Gender = 'M';

-- Find female employees whose salaries are greater than the salaries of all male employees


-- Main Query
SELECT 
EmployeeID,
FirstName,
Salary
FROM Sales.Employees WHERE Gender = 'F'
AND Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender = 'M') -- Subquery

SELECT FirstName, Salary FROM Sales.Employees WHERE Gender = 'M';
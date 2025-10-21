-- Find the highest and lowest sales of all orders
-- Find the highest and lowest sales for each product
-- Additionally provide details such orderID, OrderDate

SELECT *
FROM Sales.Orders

SELECT
    OrderID,
    ProductID,
    OrderDate,
    Sales,
    MIN(Sales) OVER() LowestSales,
    MAX(Sales) OVER() HighestSales,
    MIN(Sales) OVER(PARTITION BY ProductID) LowestSalesByProduct,
    MAX(Sales) OVER(PARTITION BY ProductID) HighestSalesByProduct
FROM Sales.Orders

-- Find the deviation of each sales from the minimum and maximum sales amount
SELECT
    OrderID,
    ProductID,
    OrderDate,
    Sales,
    MIN(Sales) OVER() LowestSales,
    MAX(Sales) OVER() HighestSales,
    Sales - MIN(Sales) OVER() DeviationFromMin,
    MAX(Sales) OVER() - Sales DeviationFromMax
FROM Sales.Orders

-- Show the employee who have the highest salaries

SELECT *
FROM Sales.Employees

SELECT
    *
FROM(
SELECT
        *,
        MAX(Salary) OVER() HighestSalary
    FROM Sales.Employees
)t
WHERE Salary = HighestSalary
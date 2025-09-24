/* Using SalesDB, Retrieve a list of all orders, along with
    the related customer, product, and employee details.
For each order, display:
    - Order ID
    - Customer's name
    - Product name
    - Sales amount
    - Product price
    - Salesperson's name
*/

SELECT 
    o.OrderID,
    c.FirstName,
    c.LastName,
    o.Sales,
    p.Product,
    p.Price,
    e.FirstName,
    e.LastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.OrderID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID
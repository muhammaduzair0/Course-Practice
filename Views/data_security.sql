-- Provide a view for the EU Sales Team 
-- that combines details from all tables
-- And excludes data related to USA.

CREATE VIEW Sales.V_Order_Details_EU AS (
    SELECT 
    o.OrderID,
    o.OrderDate,
    p.Product,
    p.Category,
    COALESCE(c.FirstName, '') + ' ' + COALESCE(c.LastName, '') CustomerName,
    c.Country CustomerCountry,
    COALESCE(e.FirstName, '') + ' ' + COALESCE(e.LastName, '') SalesName,
    e.Department,
    o.Sales,
    o.Quantity
    FROM Sales.Orders AS o

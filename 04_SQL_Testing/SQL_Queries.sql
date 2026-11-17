
-- SQL Testing - Online Store
-- Database: SQLite
-- Testing Type: Manual Database Testing

-- SQL-01 - Get all customers
SELECT *
FROM Customers;

-- SQL-02 - Find products with low stock
SELECT ProductID, ProductName, Stock
FROM Products
WHERE Stock < 10
ORDER BY Stock ASC;

-- SQL-03 - Get completed orders
SELECT OrderID, CustomerID, OrderDate, Status
FROM Orders
WHERE Status = 'Completed';

-- SQL-04 - Check orders and customer information
SELECT
    o.OrderID,
    c.FullName,
    c.Email,
    o.OrderDate,
    o.Status
FROM Orders o
         JOIN Customers c ON o.CustomerID = c.CustomerID;

-- SQL-05 - Calculate total amount for each order
SELECT
    o.OrderID,
    SUM(p.Price * oi.Quantity) AS TotalAmount
FROM Orders o
         JOIN OrderItems oi ON o.OrderID = oi.OrderID
         JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY o.OrderID;

-- SQL-06 - Find customers with more than one order
SELECT
    c.CustomerID,
    c.FullName,
    COUNT(o.OrderID) AS OrderCount
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FullName
HAVING COUNT(o.OrderID) > 1;

-- SQL-07 - Check duplicate customer emails
SELECT Email, COUNT(*) AS DuplicateCount
FROM Customers
GROUP BY Email
HAVING COUNT(*) > 1;

-- SQL-08 - Find orders without a valid customer
SELECT o.OrderID, o.CustomerID
FROM Orders o
         LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

-- SQL-09 - Find invalid product prices or stock
SELECT ProductID, ProductName, Price, Stock
FROM Products
WHERE Price <= 0 OR Stock < 0;

-- SQL-10 - Find orders without items
SELECT o.OrderID
FROM Orders o
         LEFT JOIN OrderItems oi ON o.OrderID = oi.OrderID
WHERE oi.OrderID IS NULL;

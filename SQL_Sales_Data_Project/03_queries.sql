-- Total Revenue
SELECT SUM(od.Quantity * p.Price) AS TotalRevenue
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID;

-- Top Selling Product
SELECT p.ProductName, SUM(od.Quantity) AS TotalSold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC
LIMIT 1;

-- Orders by Customer
SELECT c.Name, COUNT(o.OrderID) AS OrderCount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name;

-- Monthly Revenue
SELECT DATE_FORMAT(o.OrderDate, '%Y-%m') AS Month,
       SUM(od.Quantity * p.Price) AS MonthlyRevenue
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY Month
ORDER BY Month;

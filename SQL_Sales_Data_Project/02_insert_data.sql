-- Customers
INSERT INTO Customers VALUES (1, 'Alice', 'alice@gmail.com', 'Hyderabad');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@gmail.com', 'Chennai');

-- Products
INSERT INTO Products VALUES (101, 'Laptop', 'Electronics', 50000.00);
INSERT INTO Products VALUES (102, 'Mouse', 'Accessories', 500.00);
INSERT INTO Products VALUES (103, 'Keyboard', 'Accessories', 1000.00);

-- Orders
INSERT INTO Orders VALUES (201, 1, '2024-01-15');
INSERT INTO Orders VALUES (202, 2, '2024-02-01');

-- OrderDetails
INSERT INTO OrderDetails VALUES (301, 201, 101, 1);
INSERT INTO OrderDetails VALUES (302, 201, 102, 2);
INSERT INTO OrderDetails VALUES (303, 202, 103, 1);

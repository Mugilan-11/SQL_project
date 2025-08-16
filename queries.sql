SELECT * FROM Users;
SELECT name, stock FROM Products WHERE stock < 20;

-- Joins
SELECT o.order_id, u.name, o.order_date, o.status
FROM Orders o
JOIN Users u ON o.user_id = u.user_id;

SELECT oi.order_id, p.name, oi.quantity
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
WHERE oi.order_id = 1;

-- Aggregations
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name;

SELECT SUM(amount) AS total_revenue FROM Payments;

-- Analytics Queries
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 3;

SELECT p.name, AVG(r.rating) AS avg_rating
FROM Reviews r
JOIN Products p ON r.product_id = p.product_id
GROUP BY p.name;

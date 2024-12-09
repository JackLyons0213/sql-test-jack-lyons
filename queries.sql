-- Insert a new user
INSERT INTO Users (name, email) VALUES ('David', 'david@example.com');

-- Update a product's price
UPDATE Products SET price = 799.99 WHERE name = 'Smartphone';

-- Delete an old order
DELETE FROM Orders WHERE order_date < '2024-01-01';

-- Total sales by product category for a specific month using CTE
WITH CategorySales AS (
    SELECT c.name AS category_name, SUM(oi.quantity * p.price) AS total_sales
    FROM OrderItems oi
    JOIN Products p ON oi.product_id = p.product_id
    JOIN Categories c ON p.category_id = c.category_id
    JOIN Orders o ON oi.order_id = o.order_id
    WHERE DATE_TRUNC('month', o.order_date) = '2024-01-01'
    GROUP BY c.name
)
SELECT * FROM CategorySales;

-- List users who have never placed an order using CTE
WITH UserOrders AS (
    SELECT u.user_id, u.name, COUNT(o.order_id) AS order_count
    FROM Users u
    LEFT JOIN Orders o ON u.user_id = o.user_id
    GROUP BY u.user_id, u.name
)
SELECT name, email FROM Users u WHERE u.user_id IN (
    SELECT user_id FROM UserOrders WHERE order_count = 0
);

-- Top 5 products by average review rating using CTE
WITH ProductRatings AS (
    SELECT p.name AS product_name, AVG(r.rating) AS avg_rating
    FROM Reviews r
    JOIN Products p ON r.product_id = p.product_id
    GROUP BY p.name
)
SELECT product_name, avg_rating 
FROM ProductRatings
ORDER BY avg_rating DESC
LIMIT 5;

-- Number of orders per day for the last 30 days using CTE
WITH DailyOrders AS (
    SELECT o.order_date, COUNT(o.order_id) AS num_orders
    FROM Orders o
    WHERE o.order_date >= CURRENT_DATE - INTERVAL '30 days'
    GROUP BY o.order_date
)
SELECT order_date, num_orders FROM DailyOrders
ORDER BY order_date;

-- Join operation example: User order details
SELECT u.name AS user_name, o.order_id, p.name AS product_name, oi.quantity
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
ORDER BY u.name, o.order_id;
-- Insert Categories
INSERT INTO Categories (name) VALUES ('Electronics'), ('Books'), ('Clothing');

-- Insert Users
INSERT INTO Users (name, email) VALUES ('Alice', 'alice@example.com'), ('Bob', 'bob@example.com'), ('Charlie', 'charlie@example.com');

-- Insert Products
INSERT INTO Products (name, category_id, price) VALUES 
('Smartphone', 1, 699.99),
('Laptop', 1, 999.99),
('Novel', 2, 19.99),
('T-Shirt', 3, 9.99);

-- Insert Orders
INSERT INTO Orders (user_id, order_date) VALUES (1, '2024-01-15'), (2, '2024-01-20');

-- Insert Order Items
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 1);

-- Insert Reviews
INSERT INTO Reviews (product_id, user_id, rating, comment) VALUES 
(1, 1, 5, 'Excellent product!'),
(3, 2, 4, 'Very enjoyable read.');

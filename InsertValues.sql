-- Insert Users
INSERT INTO Users (name, email, phone, city) VALUES
('Shiva Guru', 'shivaguru@gmail.com', '9876543210', 'Chennai'),
('Nanda Kumar', 'nandakumar@gmail.com', '9876501234', 'Vellore');

-- Insert Products
INSERT INTO Products (name, category, price, stock) VALUES
('Laptop', 'Electronics', 55000, 10),
('Smartphone', 'Electronics', 20000, 25),
('Headphones', 'Accessories', 1500, 100);

-- Insert Orders
INSERT INTO Orders (user_id, status) VALUES
(1, 'Completed'),
(2, 'Pending');

-- Insert Order Items
INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
(1, 1, 1), 
(1, 3, 2), 
(2, 2, 1); 

-- Insert Payments
INSERT INTO Payments (order_id, amount, method) VALUES
(1, 58000, 'Credit Card');

-- Insert Reviews
INSERT INTO Reviews (product_id, user_id, rating, comment) VALUES
(1, 1, 5, 'Excellent laptop!'),
(3, 1, 4, 'Good quality headphones');

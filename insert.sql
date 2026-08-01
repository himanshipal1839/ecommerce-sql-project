-- E-Commerce Sales Database
-- Sample Data


-- Insert Customer Data


INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `gender`, `email`, `phone_no`, `city`) VALUES
(1, 'Himanshi', 'Pal', 'Female', 'palhimashi@gmail.com', 9873456754, 'Delhi'),
(2, 'Amit', 'Sharma', 'Male', 'amit@gmail.com', 9876543210, 'Delhi'),
(3, 'Priya', 'Singh', 'Female', 'priya@gmail.com', 9876543211, 'Mumbai'),
(4, 'Rahul', 'Verma', 'Male', 'rahul@gmail.com', 9876543212, 'Jaipur'),
(5, 'Sneha', 'Gupta', 'Female', 'sneha@gmail.com', 9876543213, 'Lucknow'),
(6, 'Rohit', 'Mehta', 'Male', 'rohit@gmail.com', 9876543214, 'Pune'),
(7, 'Neha', 'Kapoor', 'Female', 'neha@gmail.com', 9876543215, 'Chandigarh'),
(8, 'Vikas', 'Yadav', 'Male', 'vikas@gmail.com', 9876543216, 'Patna'),
(9, 'Anjali', 'Mishra', 'Female', 'anjali@gmail.com', 9876543217, 'Bhopal');




-- Insert Category Data


INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(101, 'Electronics'),
(102, 'Clothing'),
(103, 'Books'),
(104, 'Beauty'),
(105, 'Home');




-- Insert Product Data


INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `price`, `stock_quantity`) VALUES
(1, 'Laptop', 101, 65000, 20),
(2, 'Smartphone', 101, 25000, 35),
(3, 'Wireless Mouse', 101, 800, 50),
(4, 'Keyboard', 101, 1200, 40),
(5, 'Bluetooth Speaker', 101, 2500, 30),
(6, 'Men T-Shirt', 102, 700, 100),
(7, 'Women Kurti', 102, 1200, 80),
(8, 'Jeans', 102, 1800, 70),
(9, 'Jacket', 102, 2500, 45),
(10, 'Sports Shoes', 102, 3200, 60),
(11, 'SQL Basics', 103, 450, 90),
(12, 'Python Programming', 103, 600, 70),
(13, 'Data Science Handbook', 103, 850, 55),
(14, 'Machine Learning', 103, 950, 40),
(15, 'Java Complete Guide', 103, 700, 50),
(16, 'Face Wash', 104, 250, 120),
(17, 'Shampoo', 104, 350, 90),
(18, 'Perfume', 104, 1200, 40),
(19, 'Lipstick', 104, 650, 60),
(20, 'Moisturizer', 104, 500, 70),
(21, 'Dining Table', 105, 15000, 15),
(22, 'Office Chair', 105, 4500, 25),
(23, 'LED Lamp', 105, 1200, 45),
(24, 'Wall Clock', 105, 800, 35),
(25, 'Bedsheet', 105, 900, 65);



-- Insert Order Data


INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `payment_method`, `order_status`) VALUES
(31, 1, '2026-07-26 19:36:13', 'UPI', 'Delivered'),
(32, 2, '2026-07-26 19:36:13', 'Card', 'Paid'),
(33, 3, '2026-07-26 19:36:13', 'Cash', 'Pending'),
(34, 4, '2026-07-26 19:36:13', 'UPI', 'Delivered'),
(35, 5, '2026-07-26 19:36:13', 'Card', 'Cancelled'),
(36, 6, '2026-07-26 19:36:13', 'Cash', 'Delivered'),
(37, 7, '2026-07-26 19:36:13', 'UPI', 'Paid'),
(38, 8, '2026-07-26 19:36:13', 'Card', 'Delivered'),
(39, 9, '2026-07-26 19:36:13', 'Cash', 'Pending'),
(40, 1, '2026-07-26 19:36:13', 'UPI', 'Delivered'),
(41, 2, '2026-07-26 19:36:13', 'Card', 'Paid'),
(42, 3, '2026-07-26 19:36:13', 'Cash', 'Delivered'),
(43, 4, '2026-07-26 19:36:13', 'UPI', 'Cancelled'),
(44, 5, '2026-07-26 19:36:13', 'Card', 'Paid'),
(45, 6, '2026-07-26 19:36:13', 'Cash', 'Delivered'),
(46, 7, '2026-07-26 19:36:13', 'UPI', 'Pending'),
(47, 8, '2026-07-26 19:36:13', 'Card', 'Delivered'),
(48, 9, '2026-07-26 19:36:13', 'Cash', 'Paid'),
(49, 1, '2026-07-26 19:36:13', 'UPI', 'Delivered'),
(50, 2, '2026-07-26 19:36:13', 'Card', 'Pending'),
(51, 3, '2026-07-26 19:36:13', 'Cash', 'Delivered'),
(52, 4, '2026-07-26 19:36:13', 'UPI', 'Paid'),
(53, 5, '2026-07-26 19:36:13', 'Card', 'Delivered'),
(54, 6, '2026-07-26 19:36:13', 'Cash', 'Cancelled'),
(55, 7, '2026-07-26 19:36:13', 'UPI', 'Delivered'),
(56, 8, '2026-07-26 19:36:13', 'Card', 'Paid'),
(57, 9, '2026-07-26 19:36:13', 'Cash', 'Delivered'),
(58, 1, '2026-07-26 19:36:13', 'UPI', 'Pending'),
(59, 2, '2026-07-26 19:36:13', 'Card', 'Delivered'),
(60, 3, '2026-07-26 19:36:13', 'Cash', 'Paid');



-- Insert Order Item Data


INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `total_price`) VALUES
(21, 31, 1, 1, 65000),
(22, 32, 2, 2, 50000),
(23, 33, 3, 3, 2400),
(24, 34, 4, 1, 1200),
(25, 35, 5, 2, 5000),
(26, 36, 6, 2, 1400),
(27, 37, 7, 1, 1200),
(28, 38, 8, 2, 3600),
(29, 39, 9, 1, 2500),
(30, 40, 10, 1, 3200),
(31, 41, 11, 2, 900),
(32, 42, 12, 1, 600),
(33, 43, 13, 1, 850),
(34, 44, 14, 2, 1900),
(35, 45, 15, 1, 700),
(36, 46, 16, 3, 750),
(37, 47, 17, 2, 700),
(38, 48, 18, 1, 1200),
(39, 49, 19, 2, 1300),
(40, 50, 20, 1, 500),
(41, 51, 21, 1, 15000),
(42, 52, 22, 2, 9000),
(43, 53, 23, 3, 3600),
(44, 54, 24, 2, 1600),
(45, 55, 25, 2, 1800),
(46, 56, 1, 1, 65000),
(47, 57, 6, 3, 2100),
(48, 58, 12, 2, 1200),
(49, 59, 18, 2, 2400),
(50, 60, 24, 1, 800);


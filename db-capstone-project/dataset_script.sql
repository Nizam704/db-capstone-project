INSERT INTO bookings (BookingID, BookingDate, TableNumber) VALUES
(1, '2024-08-10', 5),
(2, '2024-08-11', 3),
(3, '2024-08-12', 7),
(4, '2024-08-13', 2),
(5, '2024-08-14', 4),
(6, '2024-08-15', 1);

INSERT INTO customers (CustomerID, CustomerName, ContactNumber, Email) VALUES
(1, 'John Doe', 1234567890, 'johndoe@example.com'),
(2, 'Jane Smith', 0987654321, 'janesmith@example.com'),
(3, 'Michael Brown', 1122334455, 'michaelb@example.com'),
(4, 'Emily White', 1223344556, 'emilyw@example.com'),
(5, 'Robert Black', 1876543210, 'robertb@example.com'),
(6, 'Sophia Green', 1988776655, 'sophiag@example.com');

INSERT INTO deliverystatus (DeliveryID, DeliveryDate, DeliveryStatus, StaffID) VALUES
(1, '2024-08-10', 'Delivered', 1),
(2, '2024-08-11', 'Pending', 2),
(3, '2024-08-12', 'Cancelled', 3),
(4, '2024-08-13', 'Delivered', 1),
(5, '2024-08-14', 'Pending', 2),
(6, '2024-08-15', 'Delivered', 3);

INSERT INTO menuitems (MenuItemID, ItemName, ItemPrice) VALUES
(1, 'Margherita Pizza', 8.99),
(2, 'Kung Pao Chicken', 12.99),
(3, 'Tacos', 9.99),
(4, 'Butter Chicken', 14.99),
(5, 'Coq au Vin', 19.99),
(6, 'BBQ Ribs', 15.99);

INSERT INTO menu (MenuID, Cuisine, Starters, Drinks, Desserts, MenuItemID) VALUES
(1, 'Italian', 'Bruschetta', 'Red Wine', 'Tiramisu', 1),
(2, 'Chinese', 'Spring Rolls', 'Green Tea', 'Mango Pudding', 2),
(3, 'Mexican', 'Nachos', 'Margarita', 'Churros', 3),
(4, 'Indian', 'Samosa', 'Masala Chai', 'Gulab Jamun', 4),
(5, 'French', 'Escargot', 'Champagne', 'Crème Brûlée', 5),
(6, 'American', 'Chicken Wings', 'Cola', 'Apple Pie', 6);


INSERT INTO orders (OrderID, OrderDate, Quantity, TotalCost, BookingID, MenuID, DeliveryID, CustomerID) VALUES
(1, '2024-08-10', 2, 17.98, 1, 1, 1, 1),
(2, '2024-08-11', 1, 12.99, 2, 2, 2, 2),
(3, '2024-08-12', 3, 29.97, 3, 3, 3, 3),
(4, '2024-08-13', 1, 14.99, 4, 4, 4, 4),
(5, '2024-08-14', 2, 39.98, 5, 5, 5, 5),
(6, '2024-08-15', 4, 63.96, 6, 6, 6, 6);

INSERT INTO staff (StaffID, FirstName, LastName, Role, Salary) VALUES
(1, 'Emily', 'Clark', 'Delivery Driver', 3000.00),
(2, 'David', 'Johnson', 'Chef', 4500.00),
(3, 'Sarah', 'Brown', 'Waitress', 2500.00),
(4, 'James', 'Wilson', 'Manager', 5000.00),
(5, 'Alice', 'Davis', 'Cleaner', 2000.00),
(6, 'Chris', 'Taylor', 'Bartender', 2800.00);



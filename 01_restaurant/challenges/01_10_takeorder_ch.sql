-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Generating the OrderID
INSERT INTO Orders(CustomerID,OrderDate) VALUES
((SELECT CustomerID
FROM Customers 
WHERE FirstName='Loretta' 
AND LastName='Hundey'),'2022-07-20 14:00:00');

-- Making an entry to OrderDishes Table for each Dish entry
INSERT INTO OrdersDishes(OrderID,DishID)
VALUES 
((SELECT OrderID FROM Orders 
WHERE CustomerID =
(SELECT CustomerID FROM Customers WHERE FirstName='Loretta' 
 AND LastName ='Hundey' )),
 (SELECT DishID FROM Dishes WHERE Name = 'House Salad'));

INSERT INTO OrdersDishes(OrderID,DishID)
VALUES 
((SELECT OrderID FROM Orders 
WHERE CustomerID =
(SELECT CustomerID FROM Customers WHERE FirstName='Loretta' 
 AND LastName ='Hundey' )),
 (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));

INSERT INTO OrdersDishes(OrderID,DishID)
VALUES 
((SELECT OrderID FROM Orders 
WHERE CustomerID =
(SELECT CustomerID FROM Customers WHERE FirstName='Loretta' 
 AND LastName ='Hundey' )),
 (SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers'));

-- Bill Calculation after placing the orders
SELECT Orders.OrderID,FirstName,LastName,SUM(Price*1)
FROM Customers
JOIN Orders
ON Orders.CustomerID=Customers.CustomerID
JOIN OrdersDishes
ON Orders.OrderID=OrdersDishes.OrderID
JOIN Dishes
ON OrdersDishes.DishID=Dishes.DishID
WHERE OrderDate = '2022-07-20 14:00:00' AND
FirstName ='Loretta' AND LastName ='Hundey' AND 
OrdersDishes.DishID IN 
(SELECT DishID FROM Dishes WHERE Name IN 
('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie'))
GROUP BY Orders.OrderID;
-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Update information in the database.
UPDATE Customers
SET FavoriteDish = 
(SELECT DishID FROM Dishes WHERE Name='Quinoa Salmon Salad')
WHERE
FirstName='Cleo';


-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

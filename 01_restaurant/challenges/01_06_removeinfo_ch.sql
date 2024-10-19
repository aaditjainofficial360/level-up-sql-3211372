-- Remove incorrect information from the database.
SELECT CustomerID FROM Customers WHERE FirstName='Norby';

DELETE
FROM Reservations
WHERE CustomerID = 64
AND DATE>'2022-07-21';
-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.
SELECT * 
FROM Reservations
WHERE CustomerID IN
(SELECT CustomerID FROM Customers WHERE LastName LIKE 'St%')
AND Date>'2022-06-13';
-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

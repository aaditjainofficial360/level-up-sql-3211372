-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(*) AS "Dracula Book Copies Borrowed"
FROM Loans 
WHERE BookID IN 
(SELECT BookID FROM Books
WHERE Title='Dracula')
AND ReturnedDate IS NOT NULL;

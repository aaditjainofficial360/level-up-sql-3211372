-- Generate a list of customer information.
SELECT * FROM Customers;

-- Show their first name, last name, and email address.
SELECT FirstName,LastName,Email
FROM Customers;
-- Sort the list of results by last name.
SELECT * FROM Customers 
ORDER BY LastName;

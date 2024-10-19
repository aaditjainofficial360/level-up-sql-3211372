-- Register a customer for our Anniversary event.
SELECT * 
FROM Customers 
WHERE Email='atapley2j@kinetecoinc.com';

INSERT INTO Special_People VALUES
(92,3);

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
SELECT * FROM Special_People;

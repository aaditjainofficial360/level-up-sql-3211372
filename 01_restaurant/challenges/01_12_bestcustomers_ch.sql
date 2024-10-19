-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Orders.CustomerID,FirstName,LastName,COUNT(OrderID) AS "ORDERS COUNT"
FROM Orders
JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY 4 DESC
LIMIT 10;

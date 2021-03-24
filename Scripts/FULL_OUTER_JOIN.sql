
-- Get total number of orders by each customers including those who didn't make any order
SELECT Orders.ORDERID, Customers.CUSTOMERID FROM Orders
	FULL OUTER JOIN Customers ON Orders.CUSTOMERID = Customers.CUSTOMERID
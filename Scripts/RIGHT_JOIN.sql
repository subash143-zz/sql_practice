-- Get total number of orders by each customers including those who didn't make any order
SELECT Customers.NAME, COUNT(Orders.ORDERID) as 'Total Order' FROM Orders
	LEFT JOIN Customers ON Customers.CUSTOMERID = Orders.CUSTOMERID
	GROUP BY Customers.NAME
	ORDER BY [Total Order] DESC
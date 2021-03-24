--Get all orders from a customer
SELECT CS.NAME, Os.ORDERID FROM Customers as CS
	INNER JOIN Orders as Os ON CS.CUSTOMERID = OS.CUSTOMERID

--Count orders from a Customer
SELECT CS.NAME, COUNT(CS.NAME) AS 'Total Orders' FROM Customers as CS
	INNER JOIN Orders as Os ON CS.CUSTOMERID = OS.CUSTOMERID
	GROUP By CS.NAME
	ORDER BY [Total Orders] DESC

-- Count the number of orders in an orderid
SELECT Orders.ORDERID, COUNT(Orders.OrderId) AS 'Items In Order' FROM Orders
	INNER JOIN OrderItems ON Orders.ORDERID = OrderItems.ORDERID
	INNER JOIN ITEMS ON Items.ITEMID = OrderItems.ITEMID
	GROUP BY Orders.ORDERID
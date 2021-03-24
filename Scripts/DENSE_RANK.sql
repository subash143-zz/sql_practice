

-- Get total number of orders by each customers including those who didn't make any order
SELECT Customers.NAME, COUNT(Orders.ORDERID) as 'Total Order' FROM CUSTOMERS
	LEFT JOIN Orders ON Customers.CUSTOMERID = Orders.CUSTOMERID
	GROUP BY Customers.NAME
	ORDER BY [Total Order] DESC


--Lets give a rank to customers based on the number of orders they make
--1. Count total orders using Join and use it as a subquery (Remember to give alias here: Ranks)
--2. Use DENSE_RANK 
SELECT Ranks.Name, DENSE_RANK() OVER (ORDER BY Ranks.[Total Orders] DESC) AS 'Rank'
	FROM 
		(SELECT Customers.NAME as [Name], COUNT(Orders.ORDERID) as 'Total Orders' FROM CUSTOMERS
		LEFT JOIN Orders ON Customers.CUSTOMERID = Orders.CUSTOMERID
		GROUP BY Customers.NAME) as Ranks
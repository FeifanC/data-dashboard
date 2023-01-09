/****** Script for Customers from SSMS  ******/
SELECT 
	c.customerkey AS CustomerKey,
      
    c.firstname AS [First Name],
	c.lastname AS [Last Name],
    c.firstname + ' ' + lastname AS [FULL Name],
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	c.datefirstpurchase AS DatefirstPurchase,
	g.city AS [Customer City]

FROM 
	dbo.dimcustomer AS c 
	LEFT JOIN dbo.dimgeography AS g ON g.GeographyKey = c.geographykey
ORDER BY
	CustomerKey ASC
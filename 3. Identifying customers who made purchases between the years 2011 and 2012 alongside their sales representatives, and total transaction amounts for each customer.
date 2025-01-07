/*
Discrepancy in finances 
Identifying customers who made purchases between the years 2011 and 2012 alongside their sales representatives, and total transaction amounts for each customer.
*/

SELECT
	c.CustomerId,
	c.Firstname,
	c.LastName,
	i.InvoiceDate,
	e.EmployeeId,
	i.total	
FROM
	Customer AS c
INNER JOIN 
	Employee AS e
	ON c.SupportRepId = e.EmployeeId
INNER JOIN 
	Invoice AS i
	ON 	i.CustomerId = c.CustomerId
WHERE
	  InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER BY
	i.total DESC

/*
Discrepancy in finances 
Get a list of employees who exceeded the average transaction amount from sales they generated during 2011 and 2012.
*/

SELECT
	e.EmployeeId,
	e.Lastname,
	e.FirstName,
	sum(i.total) AS "Total Sales"
FROM
	Customer As c
INNER JOIN 
	Employee AS e
	ON  c.SupportRepId = e.EmployeeId
INNER JOIN
	Invoice AS i
	ON c.customerid = i.CustomerId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	AND i.total > 11.66
GROUP BY
	e.EmployeeId
Order By
	e.LastName

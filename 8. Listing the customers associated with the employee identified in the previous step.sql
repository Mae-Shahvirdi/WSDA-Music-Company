/*
Discrepancy in finances 
List the customers that the employee identified in the last question.
*/

SELECT
	e.EmployeeId,
	e.FirstName || ' ' || e.LastName AS "Employee Name",
	c.CustomerId,
	c.FirstName || ' ' || c.LastName  AS "Customer Name",
	total
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
	AND Employeeid = "3"
GROUP BY
	c.CustomerId
ORDER BY
	total DESC

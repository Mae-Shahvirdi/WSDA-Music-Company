/*
Discrepancy in finances 
Create a Commission Payout column that displays each employee’s commission based on 15% of the sales transaction amount.
*/

SELECT
	e.EmployeeId,
	e.Lastname,
	e.FirstName,
	round(sum(i.total),2) AS "Total Sales",
	round(sum(i.total)*15,2) AS "Commission Payout"
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
GROUP BY
	e.EmployeeId
Order By
	"Commission Payout"

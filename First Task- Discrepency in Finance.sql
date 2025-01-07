/*
 Discrepency in finances 
 First Step: How many transactions took place between the years 2011 and 2012?
*/

SELECT  
    count(*)
FROM
    Invoice
WHERE
    InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'

/*
How much money did WSDA Music make during the same period? 
*/	
	
SELECT
	Sum(total) 
FROM
	Invoice 
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	
	
/*
Get a list of customers who made purchases between 2011 and 2012.
*/

SELECT
	c.CustomerId,
	c.Firstname,
	c.LastName,
	i.InvoiceDate,
	i.total
FROM
	Customer AS c
INNER JOIN 
	Invoice AS i
	ON 	i.CustomerId = c.CustomerId
WHERE
	  InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER BY
	i.total DESC
	
	  
/*
Get a list of customers, sales reps, and total transaction amounts for each customer between 2011 and 2012.
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
	  
/*
How many transactions are above the average transaction amount during the same time period?
*/
/* The average transaction amount between 2011-01-01 and 1012-12-31 */

SELECT
	round(avg(total),2) AS "Average Transaction Amount"
FROM
	Invoice
WHERE
	 InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	 
/* Get the number of transactions above the average transaction amount */
SELECT
	count(total) AS "Num of transactions above the average transsaction amount"
FROM
	Invoice
WHERE
	 InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
		 AND total > (SELECT
								round(avg(total),2) AS "Average Transaction Amount"
							FROM
								Invoice
							WHERE
								 InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31')
								 
/* What is the average transaction amount for each year that WSDA Music has been in business?*/
SELECT
	strftime('%Y',InvoiceDate) AS Year,
	round(avg(total),2) AS "Average Transaction Amount"
FROM
	Invoice
Group By
	strftime('%Y',InvoiceDate)

/* Get a list of employees who exceeded the average transaction amount from sales they generated during 2011 and 2012.*/
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
	
/* Create a Commission Payout column that displays each employee’s commission based on 15% of the sales transaction amount.*/
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
	"Commision Payout"
	
/*Which employee made the highest commission?*/
/*List the customers that the employee identified in the last question.*/

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

/*Which customer made the highest purchase?*/
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
	
	
/*Look at this customer record—do you see anything suspicious?*/

SELECT	
	*
FROM 
	Customer
WHERE
	LastName = "Doeein"
	
/*	Who do you conclude is our primary person of interest? 
Jane Peacock*/
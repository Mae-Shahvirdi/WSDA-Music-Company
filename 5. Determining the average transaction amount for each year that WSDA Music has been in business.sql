/*
Discrepancy in finances 								 
What is the average transaction amount for each year that WSDA Music has been in business?*/

SELECT
	strftime('%Y',InvoiceDate) AS Year,
	round(avg(total),2) AS "Average Transaction Amount"
FROM
	Invoice
Group By
	strftime('%Y',InvoiceDate)

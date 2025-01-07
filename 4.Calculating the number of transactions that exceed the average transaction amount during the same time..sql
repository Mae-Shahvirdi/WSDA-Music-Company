/*
Discrepancy in finances 
How many transactions are above the average transaction amount during the same period?
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
	count(total) AS "Num of transactions above the average transaction amount"
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

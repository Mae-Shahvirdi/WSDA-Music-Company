/*
Discrepancy in finances 
How much money did WSDA Music make during the same period? 
*/	
	
SELECT
	Sum(total) 
FROM
	Invoice 
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'

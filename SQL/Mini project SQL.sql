--Load chinook (Database).db to https://sqliteonline.com/

-- select firstname lastname from customer table and select country is USA, Brazil, France 
-- Excel vs SQL: Filter = Where
SELECT 
	firstname,
    	lastname,
	firstname  || lastname AS fullname
FROM customers
WHERE country IN ('USA','Brazil','France');
	
--How to use pattern matching > Select whatever before "@yahoo" (use %)
SELECT 
	firstname AS fname, 
   	lastname AS lname, 
	firstname,
   	email
FROM customers
WHERE email LIKE '%@yahoo%';

--How to use aggregate functions
SELECT 
	SUM(total) AS revenue, 
	SUM(total) AS vat,
	MIN(total),
	MAX(total)
FROM invoices

-- Calculate VAT
SELECT 
	SUM(total) AS revenue, 
	ROUND(SUM(total)*0.7,2) AS vat
FROM invoices




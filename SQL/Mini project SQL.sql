--Load chinook (Database).db to https://sqliteonline.com/

-- select firstname lastname from customer table and select country is USA, Brazil, France 
-- Excel vs SQL: Filter = Where
select 
	firstname,
    	lastname,
	firstname  || lastname AS fullname
FROM customers
WHERE country in ('USA','Brazil','France');
	
--How to use pattern matching > Select whatever before "@yahoo" (use %)
select 
	firstname AS fname, 
   	lastname AS lname, 
	firstname,
   	email
FROM customers
WHERE email LIKE '%@yahoo%';

--How to use aggregate functions




-- select firstname lastname from customer table and select country is USA, Brazil, France 
select 
	firstname AS fname, 
    lastname as lname, 
	firstname  || lastname AS fullname
FROM customers
WHERE country in ('USA','Brazil','France')



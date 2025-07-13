-- Load chinook (Database).db to https://sqliteonline.com/

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

-- Select NULL data
SELECT * FROM customers
WHERE company IS NULL
	
-- Select not NULL data
SELECT * FROM customers
WHERE company IS NOT NULL

-- How to use GROUP BY (ตัวที่ต้องการ GROUP BY จะต้องอยู่ใน SELECT ด้วย)
SELECT 
	country,
    	COUNT(*)
FROM customers
GROUP by country;

-- How to use ORDER BY (การเรียงข้อมูล จาก column ที่เราต้องการ) (DESC = เรียงจากมากไปน้อย)
SELECT name, milliseconds, bytes
FROM tracks
ORDER BY bytes DESC

-- How to use JOIN table (like VLOOK UP) (เอาค่าใน column มา match กัน) (pk=primary key)
SELECT * FROM table1
JOIN table2
ON table1.pk = table2.fk; 

-- INNER JOIN (default) = select only match 
-- LEFT JOIN = table ซ้านตั้ง แล้วเอาอีก table มาต่อกัน ค่าไหน match ไม่ได้จะเป็น NULL
SELECT * FROM artists
JOIN albums
ON artists.ArtistId = albums.ArtistId














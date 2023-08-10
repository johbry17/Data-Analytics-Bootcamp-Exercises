-- In this activity, you will practice unions by combining data from tables without the use of joins.

-- Using `UNION`, write a PostgreSQL statement to query the number of rows in tables `city` and `country`.
SELECT COUNT(city) AS count, 'City' AS name FROM city
UNION
SELECT COUNT (country) AS count, 'Country' AS name FROM country;

-- I DON"T HAVE THIS DATA! No customer_list
-- but here's an attempt...
-- Use `UNION` to display from the tables `customer` and `customer_list` the ID of all customers who live in the city of London. 
SELECT customer_id FROM customer WHERE city = 'London'
UNION
SELECT customer_id FROM customer_list WHERE city = 'London';

-- Determine whether both tables contain the same customers by using `UNION ALL`.
SELECT customer_id FROM customer WHERE city = 'London'
UNION ALL
SELECT customer_id FROM customer_list WHERE city = 'London';

-- test of union and union all with data i do have
SELECT country_id FROM country WHERE country = 'Germany'
UNION
SELECT country_id from city WHERE country_id = 38;
	-- returns only one row

-- test union all
SELECT country_id FROM country WHERE country = 'Germany'
UNION ALL
SELECT country_id from city WHERE country_id = 38;
	-- returns 8 rows
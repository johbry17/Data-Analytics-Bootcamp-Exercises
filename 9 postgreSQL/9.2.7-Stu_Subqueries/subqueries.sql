-- List the names and ID numbers of cities that are in the following list: `Qalyub`, `Qinhuangdao`, `Qomsheh`, `Quilmes`.
SELECT
	city_id,
	city
FROM city
WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes');
	/*421	"Qalyub"
	422	"Qinhuangdao"
	423	"Qomsheh"
	424	"Quilmes"*/

-- Display the districts in the above list of cities.
/*SELECT
    a.district,
    c.city_id,
    c.city
FROM city AS c
JOIN address AS a ON c.city_id = a.city_id
WHERE c.city_id IN (
    SELECT city_id
    FROM city
    WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')
)
ORDER BY c.city, a.district;*/
/*
SELECT district
FROM address
WHERE city_id IN
(
  SELECT city_id
  FROM city
  WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')
);
*/
SELECT
	a.district,
	c.city_id,
	c.city
FROM city AS c
JOIN address AS a ON c.city_id = a.city_id
WHERE c.city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes');
	/*"al-Qalyubiya"	421	"Qalyub"
	"Hebei"	422	"Qinhuangdao"
	"Esfahan"	423	"Qomsheh"
	"Buenos Aires"	424	"Quilmes"*/

--Using subqueries, find the first and last names of customers who reside in cities that begin with the letter *Q*.
-- customer.first_name, customer.last_name, address_id (customer, address), city.city, city_id (address, city)
SELECT first_name, last_name
FROM customer
WHERE address_id IN
(
  SELECT address_id
  FROM address a
  WHERE city_id IN
  (
    SELECT city_id
    FROM city
    WHERE city LIKE 'Q%'
  )
);


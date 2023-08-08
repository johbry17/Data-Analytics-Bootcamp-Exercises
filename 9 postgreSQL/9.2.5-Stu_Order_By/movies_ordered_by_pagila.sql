-- Determine the count of actor first names with the names ordered in descending order.
SELECT 
	COUNT(*) AS c, first_name 
FROM actor
GROUP BY first_name
ORDER BY c DESC
LIMIT 10;
	/*4	"KENNETH"
	4	"PENELOPE"
	4	"JULIA"
	3	"NICK"
	3	"FAY"
	3	"MATTHEW"
	3	"GENE"
	3	"JAYNE"
	3	"DAN"
	3	"GROUCHO"*/


-- Determine the average rental duration for each rating rounded to two decimals. Order these in ascending order.
SELECT 
	rating,
	ROUND(AVG(rental_duration)::numeric, 2) AS rd
FROM film
GROUP BY rating
ORDER BY rd ASC;
	/*"R"	4.77
	"G"	4.84
	"PG-13"	5.05
	"PG"	5.08
	"NC-17"	5.14*/

-- Determine the top 10 average replacement costs for movies, ordered by their length.
SELECT 
	length || ' mins',
	'$' || ROUND(AVG(replacement_cost)::numeric, 2) AS rc
FROM film
GROUP BY length
ORDER BY rc DESC
LIMIT 10;
	/*"131 mins"	"$25.79"
	"133 mins"	"$25.19"
	"62 mins"	"$24.16"
	"81 mins"	"$23.99"
	"66 mins"	"$23.99"
	"46 mins"	"$23.79"
	"167 mins"	"$23.70"
	"60 mins"	"$23.62"
	"164 mins"	"$23.49"*/

-- Using the city and country tables, determine the count of countries in descending order.
SELECT
	country.country,
	COUNT(city.country_id) AS c
FROM city
JOIN country ON city.country_id = country.country_id
GROUP BY country.country
ORDER BY c DESC
LIMIT 10;
	/*"India"	60
	"China"	53
	"United States"	35
	"Japan"	31
	"Mexico"	30
	"Brazil"	28
	"Russian Federation"	28
	"Philippines"	20
	"Turkey"	15
	"Indonesia"	14*/	

-- 1. What is the average cost to rent a film in the stores?
SELECT AVG(rental_rate) FROM film;
	-- $2.98

-- 2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? Most expensive?
SELECT
	rating,
	AVG(rental_rate)
FROM film
GROUP BY rating;
	/*"PG"	3.0518556701030928
	"PG-13"	3.0348430493273543
	"R"	2.9387179487179487
	"G"	2.8888764044943820
	"NC-17"	2.9709523809523810
	-- On average, G films are cheapest, PG most expensive*/

-- 3. How much would it cost to replace all the films in the database?
SELECT
	SUM(replacement_cost)
FROM
	film;
-- $19,984

-- 4. How much would it cost to replace all the films in each ratings category?
SELECT
	rating AS r,
	SUM(replacement_cost) AS rc
FROM
	film
GROUP BY r;
	/*"PG"	3678.06
	"PG-13"	4549.77
	"R"	3945.05
	"G"	3582.22
	"NC-17"	4228.90*/

-- 5. How long is the longest movie in the database? The shortest?
SELECT
	f.title,
	f.length
FROM
	film AS f
JOIN
	(SELECT MAX(length) as mx FROM film)
	AS max_film ON f.length = max_film.mx;
	/*"CHICAGO NORTH"	185
	"CONTROL ANTHEM"	185
	"DARN FORRESTER"	185
	"GANGS PRIDE"	185
	"HOME PITY"	185
	"MUSCLE BRIGHT"	185
	"POND SEATTLE"	185
	"SOLDIERS EVOLUTION"	185
	"SWEET BROTHERHOOD"	185
	"WORST BANGER"	185*/

SELECT
	f.title,
	f.length
FROM
	film AS f
JOIN
	(SELECT MIN(length) as mn FROM film)
	AS min_film ON f.length = min_film.mn;
	/*"ALIEN CENTER"	46
	"IRON MOON"	46
	"KWAI HOMEWARD"	46
	"LABYRINTH LEAGUE"	46
	"RIDGEMONT SUBMARINE"	46*/
	
SELECT title, length FROM film WHERE length = (SELECT MAX(length) FROM film);

SELECT title, length FROM film WHERE length = (SELECT MIN(length) FROM film);
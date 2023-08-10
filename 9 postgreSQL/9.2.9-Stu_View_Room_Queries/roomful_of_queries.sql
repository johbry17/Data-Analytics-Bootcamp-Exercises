/* Write a query to get the number of copies of a film title that exist in the inventory. 
The results should look like those shown in the following image. 
Your challenge is to use a subquery (a query embedded within another query) instead of a join.*/
DROP VIEW IF EXISTS number_of_copies;

CREATE VIEW number_of_copies AS
SELECT
	f.title, 
	(SELECT COUNT(inventory.film_id) FROM inventory WHERE f.film_id = inventory.film_id) AS n
FROM film AS f;

--  Query the newly created view to find all the titles that have 7 copies.
SELECT title, n
FROM number_of_copies
WHERE n = 7;
-- Using subqueries, identify all actors who appear in the film ALTER VICTORY in the `pagila` database.
SELECT 
	first_name,
	last_name
FROM actor
WHERE actor_id IN
(
	SELECT actor_id FROM film_actor WHERE film_id IN
		(SELECT film_id FROM film WHERE title = 'ALTER VICTORY')
);
	/*"OPRAH"	"KILMER"
	"ANGELA"	"WITHERSPOON"
	"JADA"	"RYDER"
	"REESE"	"KILMER"*/

-- Using subqueries, display the titles of films that the employee Jon Stephens rented to customers.
-- film_id (film, inventory), inventory_id in (inventory, rental)

SELECT title 
FROM film
WHERE film_id IN(
	SELECT film_id FROM inventory WHERE inventory_id IN(
		SELECT inventory_id FROM rental WHERE staff_id IN(
			SELECT staff_id FROM staff WHERE first_name = 'Jon' AND last_name = 'Stephens'
			)
		)
)
LIMIT 10;
	/*
	"PAJAMA JAWBREAKER"
	"EFFECT GLADIATOR"
	"BALLOON HOMEWARD"
	"VOYAGE LEGALLY"
	"STALLION SUNDANCE"
	"BIKINI BORROWERS"
	"GARDEN ISLAND"
	"SAINTS BRIDE"
	"LUCK OPUS"
	"ELF MURDER"
	*/

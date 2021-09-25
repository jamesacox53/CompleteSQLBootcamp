/* Question 1 */

SELECT address.district, customer.email
FROM customer INNER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

/* Question 2 */

SELECT film.title, actor.first_name, actor.last_name  
FROM (film INNER JOIN film_actor 
ON film.film_id = film_actor.film_id) INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';
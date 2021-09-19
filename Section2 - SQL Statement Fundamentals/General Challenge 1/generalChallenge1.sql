/* Challenge 1 */

SELECT COUNT(payment_id) FROM payment
Where amount > 5;

/* Challenge 2 */

SELECT COUNT(*) FROM actor
WHERE first_name ILIKE 'P%';

/* Challenge 3 */

SELECT COUNT(DISTINCT(district)) FROM address;

/* Challenge 4 */

SELECT DISTINCT(district) FROM address;

/* Challenge 5 */

SELECT COUNT(*) FROM film
WHERE replacement_cost >= 5 AND replacement_cost <= 15 AND rating = 'R';

/* Challenge 6 */

SELECT COUNT(*) FROM film
WHERE title ILIKE '%Truman%';
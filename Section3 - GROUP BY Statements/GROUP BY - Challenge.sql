/* Challenge 1 */

SELECT staff_id, count(payment_id) FROM payment
GROUP BY staff_id
ORDER BY count(payment_id) DESC;

/* Challenge 2 */

SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC;

/* Challenge 3 */

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
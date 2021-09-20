/* Question 1 */

SELECT customer_id
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110;

/* Question 2 */

SELECT COUNT(title)
FROM film
WHERE title ILIKE 'J%';

/* Question 3 */

SELECT *
FROM customer
WHERE first_name ILIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;
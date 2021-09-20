/* Challenge 1 */

SELECT customer_id, COUNT(payment_id) FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) >= 40
ORDER BY COUNT(payment_id) DESC;

/* Challenge 2 */

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 100
ORDER BY SUM(amount) DESC;
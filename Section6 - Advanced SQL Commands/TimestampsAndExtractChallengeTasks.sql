/* Question 1 */

SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) 
FROM payment;

/* Question 2 */

SELECT COUNT(payment.payment_date) 
FROM payment
WHERE TRIM(TO_CHAR(payment.payment_date, 'DAY')) = 'MONDAY';
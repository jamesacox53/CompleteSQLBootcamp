/* Question 1 */

SELECT * FROM cd.facilities;

/* Question 2 */

SELECT name, membercost FROM cd.facilities;

/* Question 3 */

SELECT * FROM cd.facilities
WHERE membercost > 0;

/* Question 4 */

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/ 50.0);

/* Question 5 */

SELECT * FROM cd.facilities
WHERE name ILIKE '%Tennis%';

/* Question 6 */

SELECT * FROM cd.facilities
WHERE facid IN (1, 5);

/* Question 7 */

SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01';

/* Question 8 */

SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname ASC
LIMIT 10;

/* Question 9 */

SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

/* Question 10 */

SELECT COUNT(guestcost) FROM cd.facilities
WHERE guestcost >= 10;

/* Question 11 */

SELECT facilities.facid, SUM(bookings.slots)
FROM cd.facilities INNER JOIN cd.bookings
ON facilities.facid = bookings.facid
WHERE bookings.starttime >= '2012-09-01' AND bookings.starttime < '2012-10-01'
GROUP BY facilities.facid
ORDER BY SUM(bookings.slots) ASC;

/* Question 12 */

SELECT facid, SUM(slots)
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid ASC;

/* Question 13 */

SELECT bookings.starttime, facilities.name
FROM cd.bookings INNER JOIN cd.facilities
ON bookings.facid = facilities.facid
WHERE facilities.name ILIKE '%Tennis Court%'
AND DATE(bookings.starttime) = '2012-09-21'
ORDER BY bookings.starttime ASC;

/* Question 14 */

SELECT bookings.starttime
FROM cd.bookings INNER JOIN cd.members
ON bookings.memid = members.memid
WHERE members.firstname ILIKE 'David' AND members.surname ILIKE 'Farrell';
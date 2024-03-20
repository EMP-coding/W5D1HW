


SELECT inventory_id, film_id
FROM inventory i




SELECT title, film_id FROM film


 
SELECT first_name
FROM customer 
WHERE first_name = 'Willie'

SELECT film_id, COUNT(*) AS film_id_count
FROM inventory
GROUP BY film_id
HAVING count(*) = 7
ORDER BY film_id  ASC;

SELECT film.film_id, film.title, COUNT(*) AS film_id_count
FROM inventory
JOIN film ON inventory.film_id = film.film_id
GROUP BY film.film_id, film.title
HAVING COUNT(*) = 7
ORDER BY film.film_id ASC;

SELECT rental.staff_id, staff.first_name, staff.last_name, count(rental_id) AS rental_count
FROM rental
JOIN staff ON rental.staff_id = staff.staff_id 
GROUP BY rental.staff_id, staff.first_name, staff.last_name 


SELECT *
FROM staff s



SELECT film_actor.film_id, count(film_actor.actor_id) AS actor_count, film.title
FROM film_actor
JOIN film ON film_actor.film_id = film.film_id
GROUP BY film_actor.film_id, film.title 
ORDER BY actor_count DESC 

SELECT first_name, last_name, store.store_id
FROM customer
JOIN store ON customer.store_id = store.store_id
WHERE customer.store_id = 1 AND customer.last_name LIKE '%es'

SELECT count(payment_id) AS payment_count, amount
FROM payment
WHERE customer_id between 380 AND 430 
GROUP BY amount
ORDER BY payment_count



SELECT amount 
FROM payment

SELECT rating, count(title) AS title_count
FROM film
GROUP BY rating
-- 1. How many actors are there with the last name ‘Wahlberg’? 
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory table)
SELECT MAX(film_id)
FROM inventory;

-- 4. How many customers have the last name ‘Williams’?
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'Williams';

-- 5. What store employee (get the id) sold the most rentals?
SELECT MAX(staff_id)
FROM payment;

-- 6. How many different distinct names are there?
SELECT COUNT(DISTINCT first_name), COUNT(DISTINCT last_name)
FROM customer;
SELECT COUNT(DISTINCT first_name), COUNT(DISTINCT last_name)
From actor;
SELECT COUNT(DISTINCT first_name), COUNT(DISTINCT last_name)
From staff;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
GROUP BY store_id;


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(customer_id)
FROM payment
WHERE customer_id BETWEEN 381 AND 429
GROUP BY amount 
HAVING COUNT(customer_id) > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT COUNT(DISTINCT rating)
FROM film;
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT DESC;




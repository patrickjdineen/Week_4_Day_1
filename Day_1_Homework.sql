--Q1-- 
-- How many actors are there with the last name ‘Wahlberg’?Ans: 2
SELECT * FROM actor
WHERE last_name = 'Wahlberg';
--ANS - 2

--Q2--  
-- How many payments were made between $3.99 and $5.99?
SELECT * FROM payment
WHERE amount 
BETWEEN 3.99 AND 5.99;
--ANS - 5607

--Q3-- - Ans: 
-- What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT (*)
FROM inventory
GROUP BY film_id
ORDER BY count DESC;
--ANS - 72 with 8 copies

--Q4 --
-- How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
--ANS - 0

--Q5-- 
-- What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT (*)
FROM rental
GROUP BY staff_id;
--ANS - Employee 1

--Q6 --  
-- How many different district names are there?
SELECT COUNT (DISTINCT district)
FROM address;
--ANS - 378

--Q7--  
-- What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id AS film, COUNT(actor_id) AS actors
FROM film_actor
GROUP BY film_id
ORDER BY actors DESC;
--ANS - Film 508, 15 actors

--Q8--  
-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
AND store_id = 1;
--ANS - 13 customers

--Q9-- 
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(payment_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(payment_id) > 250
ORDER BY count DESC;
--ANS - 2.99, 4.99, .99

--Q10--
-- Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT DISTINCT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY count DESC;
--ANS - PG-13, 223 
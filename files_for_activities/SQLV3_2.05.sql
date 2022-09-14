-- 1 Select all the actors with the first name ‘Scarlett’
use sakila;
SELECT * FROM sakila.actor
WHERE first_name = 'Scarlett';

-- 2 How many films (movies) are available for rent and how many films have been rented?
SELECT COUNT(inventory_id) FROM sakila.inventory;
SELECT COUNT(rental_id) FROM sakila.rental;

-- 3 What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(length) FROM sakila.film;
SELECT MIN(length) FROM sakila.film;

-- 4 What's the average movie duration expressed in format (hours, minutes)?
SELECT AVG(length) FROM sakila.film;

-- 5 How many distinct (different) actors' last names are there?
select distinct (last_name) from sakila.actor;

-- 6 Since how many days has the company been operating (check DATEDIFF() function)?
SELECT min(rental_date) FROM sakila.rental;

-- 7 Show rental info with additional columns month and weekday. Get 20 results.

-- 8 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.

-- 9 

-- 10 Get all films with ARMAGEDDON in the title.
SELECT * FROM sakila.film
WHERE title = "ARMAGEDDON";

-- 11 Get all films which title ends with APOLLO.
SELECT *
FROM sakila.film
WHERE title LIKE "%APOLO";

-- 12 Get 10 the longest films.
SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- 13 How many films include Behind the Scenes content?
SELECT COUNT(*) FROM sakila.film
WHERE special_features LIKE "%Behind the Scenes"




-- 1 Select all the actors with the first name ‘Scarlett’
SELECT * FROM sakila.actor
WHERE first_name = 'Scarlett';

-- 2 How many films (movies) are available for rent and how many films have been rented?
SELECT inventory_id as available, count(*) from sakila.inventory;
SELECT rental_id as films_rented, count(*) from sakila.rental;

-- 3 What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(length) as Max_length, MIN(Length) as Min_length FROM sakila.film;

-- 4 What's the average movie duration expressed in format (hours, minutes)?
SELECT sec_to_time(AVG(length)) FROM sakila.film;
-- 5 How many distinct (different) actors' last names are there?
SELECT last_name FROM sakila.actor
GROUP BY last_name
HAVING COUNT(*) = 1;

-- 6 Since how many days has the company been operating (check DATEDIFF() function)?
SELECT min(rental_date) as min, max(rental_Date) as max, DATEDIFF('min','max') as date FROM sakila.rental;


-- 7 Show rental info with additional columns month and weekday. Get 20 results.
SELECT * , monthname(rental_date) as month, dayname(rental_date) as day
FROM sakila.rental
LIMIT 20;

-- 8 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *, weekday(rental_date),
CASE 
WHEN weekday(rental_date) = '0' then 'workday'
WHEN weekday(rental_date) = '1' then 'workday'
WHEN weekday(rental_date) = '2' then 'workday'
WHEN weekday(rental_date) = '3' then 'workday'
WHEN weekday(rental_date) = '4' then 'workday'
WHEN weekday(rental_date) = '5' then 'workday'
ELSE 'weekend'
END AS 'day type'
FROM sakila.rental;

-- 9 Get release years
SELECT release_year FROM sakila.film
GROUP BY release_year;

-- 10 Get all films with ARMAGEDDON in the title.
SELECT * FROM sakila.film
WHERE title = 'ARMAGEDDON';

-- 11 Get all films which title ends with APOLLO.
SELECT *
FROM sakila.film
WHERE title LIKE "APOLLO%";

-- 12 Get 10 the longest films.
SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- 13 How many films include Behind the Scenes content?
SELECT COUNT(*) FROM sakila.film
WHERE special_features LIKE "%Behind the Scenes"
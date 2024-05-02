-- Actividad 1 --

SELECT title FROM film
ORDER BY title ASC

-- Actividad 2 --

SELECT DISTINCT rating FROM film 
ORDER BY rating ASC

-- Actividad 3 --

SELECT title, rental_rate FROM film
WHERE rating IN ('PG-13', 'PG')
ORDER BY rental_rate DESC, title ASC;

-- Actividad 4 --

SELECT city.city, country.country FROM city
JOIN country ON city.country_id = country.country_id
ORDER BY country.country ASC, city.city ASC;
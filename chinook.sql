/*Ejercicio 1*/

SELECT name,Composer,Milliseconds from tracks

/*Ejercicio 2*/

SELECT FirstName,LastName,Address,City from customers

/*Ejercicio 3*/

SELECT name,Composer,Milliseconds FROM tracks
WHERE Composer is null AND Milliseconds > 2900000

/*Ejercicio 4*/

SELECT LastName,FirstName,Company from customers
where Company is NOT NULL

/*Ejercicio 5*/

SELECT DISTINCT BillingCity from invoices
where BillingState is not NULL
ORDER by BillingState DESC

/*Ejercicio 6*/

SELECT Title from albums
WHERE Title like "OF"
ORDER by Title ASC

/*Ejercicio 7*/

SELECT name,GenreId from genres


/*Ejercicio 8*/

SELECT name from tracks t join albums a on t. AlbumId = a.AlbumId
order by name DESC


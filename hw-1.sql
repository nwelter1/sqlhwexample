-- Hello World SQL Statement, SELECT ALL records from a table
SELECT *
FROM actor;

-- Query for first_name and last_name in actor table
SELECT first_name,last_name
FROM actor;

-- Query for a first_name that equals "Nick" using WHERE clause
SELECT first_name,last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is equal to 'Nick' using the LIKE and WHERE clauses
SELECT first_name,last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with J using the LIKE/WHERE clauses - and the wildcard operator (ANYTHING here... I don't care)
SELECT first_name,actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all first_name data that starts with K and has 2 characters following using LIKE/WHERE and the underscore
SELECT first_name,actor_id
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name data that starts with K and ends with th
-- using the LIKE/WHERE clauses and BOTH wildcard/underscore
SELECT first_name,last_name,actor_id
FROM actor
WHERE first_name LIKE 'K_%th';

--Comparing operators are:
-- Greater Than (>) -- Less Than (<)
-- Greater than or Equal to ( >=) -- Less than or Equal to (<=)
-- Not Equal (<>)

-- Explore Data with the SELECT All Query (Specific to looking in a new table)
SELECT *
FROM payment;


-- Query for data that show customers who paid an amount greater than $2

SELECT customer_id,amount
FROM payment
WHERE amount > 2.00;

-- Query for data that shows customers who paid an amount LESS than $7.99
SELECT customer_id,amount
FROM payment
WHERE amount < 7.99;

-- Query for data wwhere customers paid an amount less than or equal to 7.99
SELEct customer_id,amount
FROM payment
WHERE amount <= 7.99;

-- data that shows customers who paid an amount GREATER than or EQUAL to $2.00
-- in Ascending Order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;


-- Query data customers who paid BETWEEN 2.00 and 7.00 using the BETWEEN and AND clauses
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

-- Query data that shows customers paying an amount NOT EQUAL to 0.00
--ordered descending
SELECT customer_id,amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display sum of amounts paid that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount >5.99;

-- Query to display the avg of amounts paid greater than $5.99

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display total records """"
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to count the amount of distinct payments greater than $5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display min amount greater than 7.99
SELECT MIN(amount) AS Min_Num_Payments
From payment
WHERE amount > 7.99;

-- Query to display max amount greater than 7.99
SELECT MAX(amount) AS Max_Num_Payments
From payment
WHERE amount > 7.99;

-- Query to display all amounts > 7.99
SELECT amount
FROM payment
WHERE amount > 7.99;

--Query to display different amounts grouped together
-- and the count of those amounts
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to display customer_ids with the summed amounts per customer_id

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY sum(amount) DESC;


-- Query customer table to get a feel for whats inside
SELECT *
FROM film_actor;


-- Query to dislpay customer_ids that show up more than 5 times
-- Grouping by that person's email address
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
HAVING COUNT(actor_id) >=10;























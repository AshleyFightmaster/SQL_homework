SELECT *
FROM actor;

------SELECT first_name and last_name
------FROM actor TABLE
SELECT first_name, last_name
FROM actor;

-- Query first_name which equals 'Nick'
-- Using the WHERE-Clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query first_name which equals 'Nick'
-- Using LIKE clause
-- NOTE: ( = ) is looking for a literal string
-- while the LIKE clause allows use for wildcards
SELECT first_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Using LIKE Clasue and WILD CARD ( % )
-- Get all J names
SELECT first_name
FROM actor
WHERE first_name LIKE 'J%';

-- Single Character Wild Card ( _ )
SELECT first_name
FROM actor
WHERE first_name LIKE 'K___';


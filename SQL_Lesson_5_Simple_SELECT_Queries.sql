-- SQL Review: Simple SELECT Queries
-- https://sqlbolt.com/lesson/select_queries_review


-- 1.-List all the Canadian cities and their populations.
SELECT city, population
FROM north_american_cities
WHERE Country = "Canada";

-- 2.-Order all the cities in the United States by their latitude from north to south.
SELECT *
FROM north_american_cities
WHERE Country = "United States"
ORDER BY latitudes DESC;
-- OR
SELECT * 
FROM north_american_cities
WHERE Country LIKE  "%united states%"
ORDER BY Latitude DESC;

-- 3.-List all the cities west of Chicago, ordered from west to east
SELECT *
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude;

-- 4.-List the two largest cities in Mexico (by population)
SELECT city, population
FROM north_american_cities
WHERE country LIKE "Mexico"
ORDER BY population DESC
LIMIT 2;

-- 5.-List the third and fourth largest cities (by population) in the United States and their population
SELECT city, population
FROM North_american_cities
WHERE Country LIKE "%United States%"
ORDER BY population DESC
LIMIT 2 OFFSET 2;

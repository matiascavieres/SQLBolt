-- SQL Lesson 9: Queries with expressions
-- https://sqlbolt.com/lesson/select_queries_with_expressions

-- 1.-List all movies and their combined sales in millions of dollars
SELECT Title, (Domestic_sales + international_sales)/1000000 as combined_sales
FROM movies
INNER JOIN Boxoffice
    ON Movies.id = Boxoffice.Movie_id;

-- 2.-List all movies and their ratings in percent
SELECT title, rating * 10
FROM movies
INNER JOIN Boxoffice
    ON Movies.id = Boxoffice.Movie_id;

-- 3.-List all movies that were released on even number years
SELECT title, year 
FROM movies
WHERE year % 2 = 0;
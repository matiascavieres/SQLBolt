-- SQL Lesson 6: Multi-table queries with JOINs
-- https://sqlbolt.com/lesson/select_queries_with_joins

-- 1.-Find the domestic and international sales for each movie.
SELECT Title, Domestic_sales, International_sales
FROM Movies
INNER JOIN Boxoffice:
    movies.Id = Boxoffice.Movie_id;

-- 2.-Show the sales numbers for each movie that did better internationally rather than domestically.
SELECT Title, Domestic_sales, International_sales
FROM Movies
INNER JOIN Boxoffice
    ON Movies.id = Boxoffice.Movie_id
WHERE Domestic_sales < International_sales;

-- 3.-List all the movies by their ratings in descending order.
SELECT Title, Rating
FROM Movies
INNER JOIN Boxoffice
    ON Movies.Id = Boxoffice.Movie_id
ORDER BY Rating DESC;
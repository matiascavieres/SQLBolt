-- SQL Lesson 8: A short note on NULLs
-- https://sqlbolt.com/lesson/select_queries_with_nulls

-- 1.-Find the name and role of all employees who have not been assigned to a building
SELECT Name, Role 
FROM employees
WHERE Building IS NULL;
-- 2.-Find the names of the buildings that hold no employees
SELECT Building_name 
FROM Buildings
LEFT JOIN Employees
    ON Building_name = Building
WHERE Building IS NULL;
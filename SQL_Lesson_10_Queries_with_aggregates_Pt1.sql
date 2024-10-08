-- SQL Lesson 10: Queries with aggregates (Pt. 1)
-- https://sqlbolt.com/lesson/select_queries_with_aggregates

-- 1.-Find the longest time that an employee has been at the studio
SELECT Name, MAX(Years_employed) as longest_employed
FROM Employees;

-- 2.-For each role, find the average number of years employed by employees in that role
SELECT *, AVG(Years_employed) as promedio
FROM Employees
Group by Role;

-- 3.-Find the total number of employee years worked in each building
SELECT *, SUM(Years_employed) as employee_years
FROM Employees
GROUP BY Building;
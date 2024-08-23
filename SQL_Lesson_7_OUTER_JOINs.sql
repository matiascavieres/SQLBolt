-- SQL Lesson 7: OUTER JOINs
-- https://sqlbolt.com/lesson/select_queries_with_outer_joins

-- 1.-Find the list of all buildings that have employees
SELECT DISTINCT Building 
FROM employees;

-- 2.-Find the list of all buildings and their capacity
SELECT * 
FROM Buildings;
-- 3.-List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;

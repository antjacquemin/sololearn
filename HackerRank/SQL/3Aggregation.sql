-- 1 Revising Aggregations - The Count Function
SELECT COUNT(ID) FROM CITY WHERE POPULATION > 100000;

-- 2 Revising Aggregations - The Sum Function
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = "California";

-- 3 Revising Aggregations - Averages
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = "California";

-- 4 Average Population
SELECT ROUND(AVG(POPULATION)) FROM CITY;

-- 5 Japan Population
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = "JPN";

-- 6 Population Density Difference
SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;

-- 7 The Blunder
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, "0", ""))) FROM EMPLOYEES;

-- 8 Top Earners
SELECT months * salary AS earnings, COUNT(employee_id ) FROM Employee 
    GROUP BY earnings ORDER BY earnings DESC LIMIT 1;
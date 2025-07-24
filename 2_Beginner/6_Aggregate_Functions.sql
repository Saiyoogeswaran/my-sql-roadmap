-- Counts the number of rows==> Includes the blank values as well
SELECT COUNT(*)
FROM parks_and_recreation.employee_demographics;

SELECT * FROM parks_and_recreation.employee_demographics;

-- If columns name is mentioned instead of *, null will not be included

# SUM, AVG, MIN, MAX ==> OTHER AGGREGATE FUNCTIONS
-- In AVG --> null values are not included 
SELECT SUM(salary) Total_Sal, Max(salary) Highest_Sal, Min(salary) Lowest_Sal, count(salary) Total_count, avg(salary) avg_sal
FROM employee_salary;
# LIMIT ==> It is used to select the top 10 or 5 based on our need
-- Used along ORDER BY to make it super useful

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 5 ;-- Used to slect the top 5 records

# With ORDER BY
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3 ;#The Top 3 oldest employees are selected

#We can also provide another argument to indicate the start and stop position{start position will not be included}
-- To select second oldest employee
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 1, 1; -- First is not included

-- OR

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 1 OFFSET 1; -- First is not included

-- To get the second and third oldest employees
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 1,2; -- First is not included

# Aliasing
-- If you want your alias to contain one or more spaces, 
-- like "My Great Products", surround your alias with square brackets or double quotes.
# SELECT ProductName AS [My Great Products] or 'My Great Products' works fine as well

SELECT gender, AVG(age) AS avg_age -- AS may or maynot be included.
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40;

SELECT gender, AVG(age) avg_age -- AS is not included still it yields the same result
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40

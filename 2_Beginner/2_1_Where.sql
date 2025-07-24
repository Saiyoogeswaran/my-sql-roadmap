# SELECT is used to filter the columns, whereas WHERE is used to filter out the rows based on the condition

#Row filtering based on comparison
SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = "Ann";

#Row filtering based on comparison
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000;

# Can use && or AND ==> Both means the same
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000 && salary < 100000;

SELECT *
FROM sakila.actor
WHERE first_name = "JOE" AND last_name = "SWANK";

# Can use || or OR ==> Both means the same
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000 || salary <100000;

SELECT *
FROM sakila.country
WHERE country = "Angola" OR country = "India";

#Combined logical operations works same as PEMDAS
SELECT * 
FROM sakila.actor, sakila.country
WHERE (first_name = "JENNIFER" AND last_name = "DAVIS") OR country = "Austria";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = "Male";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != "Male";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE year(birth_date) >= 1985



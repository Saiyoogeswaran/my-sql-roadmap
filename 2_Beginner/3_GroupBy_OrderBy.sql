-- Group By
-- When you use the GROUP BY clause in a MySQL query, it groups together rows that have the same values in the specified column or columns.
-- GROUP BY is going to allow us to group rows that have the same data and run aggregate functions on them
-- Select and groupBy column name must be same if no aggregate operation is performed, else it results in error.

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender; #Both the Selected column and grouping done has same column names.

-- Let's use aggregate function on them as well\
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender; #Here all the grouping is based on gender(male/female) all those age are averaged and displayed

SELECT gender, AVG(age) as Average_Age, MAX(age) as Max_Age, MIN(age) as Min_Age, COUNT(age) as Count
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

-- BASED ON SAKILA DATABASE
SELECT country_id, count(city)
FROM sakila.city
GROUP BY country_id;

SELECT *
FROM sakila.city
WHERE country_id = 2;

-- ORDER BY ==> Used to order the data in ascending or descending order.
# by default it uses ASC, but we can arrange it based on DESC as well.

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name; #Be default it is ASC Order.

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC; -- Arranges in descending order

# We can arrange them based on the numerical values as well, the order in which ORDER BY defined decides the flow
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender DESC, age ASC; -- First ordered based on gender, then based on age

#We can specify the ASC/DESC for each columns as well
#We can order based on the position of columns as well
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5,4; #Usuallt not preferred
/*ORDER BY 5,4 means sorting first by the 5th column in the result set, 
then by the 4th column.
*/



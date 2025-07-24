#SELECT
USE parks_and_recreation;
SELECT * #SELECT * - To select all columns
FROM employee_demographics; #This works fine when we select the parks_and_recreation(boldened)

SELECT *
FROM parks_and_recreation.employee_demographics; #When other DB are selected it still works
# FROM db_name.table_name

#SELECT Specific Columns
SELECT first_name, last_name 
FROM parks_and_recreation.employee_demographics;
#Semi-colon is used to end the SQL statement

#SELECT ==> Can also be used to perform mathematical operations(Follows PEMDAS)
SELECT first_name, 
last_name,
age,
2025 - YEAR(birth_date) as Present_Age
FROM parks_and_recreation.employee_demographics;

#SELECT + DISTINCT
SELECT gender 
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT gender, age
FROM parks_and_recreation.employee_demographics;

SELECT DISTsINCT gender, age
FROM parks_and_recreation.employee_demographics;
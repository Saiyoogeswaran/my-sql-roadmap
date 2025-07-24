# LIKE ==> Try to find similar values and no for the exact match or fit (Use along Where Clause)
-- Also called as pattern matching
# TWO WAYS 
# 1. % => Any charcters after/before based on the placement

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a%"; #Any first-name with a is selected

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "%en%"; #Any first_name with en between them

# 2. _ => underscore indicates the exact number of characters
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a__"; # Starts with a and must have total 3 characters

#Comining both % and _ is also possible in LIKE Statement
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a__%"; #Starts with a must have 2 more characters after that folowed by anything

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE "__8%";
# WHERE VS HAVING
-- HAVING is used in the place of WHERE when we use aggregate function over them.alter
-- WHERE is placed first followed by GROUP BY
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
-- WHERE AVG(age)>40 results in error, since GROUP BY is not performed first so comparison results in null.
GROUP BY gender
# To overcome this issue we use HAVING (To perform operations on aggregate functions)
HAVING AVG(age) > 40; # Now it returns male

#Using both WHERE AND HAVE TOGETHER
SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE "%manager%" # row filtering
GROUP BY occupation
HAVING AVG(salary) > 70000 # filtering based on aggregate function
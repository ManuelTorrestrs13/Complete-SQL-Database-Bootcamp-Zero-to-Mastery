/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT DISTINCT title from titles;
/* Answer: 1) Engineer, 2) Senior Engineer, 3) Manager, 4) Assistant Engineer
5) Staff, 6) Senior staff, 7) Technique Leader */

/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELECT DISTINCT birth_date FROM employees;

/* Answer: 4750

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

SELECT DISTINCT lifeexpectancy, name FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy;


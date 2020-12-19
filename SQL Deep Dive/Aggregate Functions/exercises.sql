-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries
select avg(salary) from employees; -> 63810.744836143706

-- Question 2: What year was the youngest person born in the company?
-- Table: employees
SELECT max(birth_date) FROM employees; -> 1965-02-01

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
Mi respuesta: SELECT count("public"."towns"."name") FROM "public"."towns";
Respuesta del curso: SELECT count(id) FROM towns;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
Mi respuesta: SELECT count("language") FROM countrylanguage;

Respuesta del curso: 
select count(countrycode) from countrylanguage
where isofficial = true;
-- Output: 238

-- Question 2: What is the average life expectancy in the world?
-- Table: country

select avg(lifeexpectancy) FROM country;
-- Output: 66.48603611164265

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

select AVG(population) from city
where countrycode = 'NLD';

--  Output: 185001.75

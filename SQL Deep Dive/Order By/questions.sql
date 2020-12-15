/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/

SELECT emp_no, first_name, last_name FROM employees
ORDER BY first_name ASC, last_name DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

SELECT * from employees
ORDER BY AGE(birth_date);

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/

SELECT emp_no, first_name, last_name, hire_date from employees
WHERE first_name LIKE 'K%'
ORDER BY hire_date;
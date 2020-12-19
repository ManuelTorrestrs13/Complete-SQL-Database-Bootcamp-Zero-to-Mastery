/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, COUNT(hire_date) as "amount"
FROM employees
GROUP BY hire_date
ORDER BY "amount" DESC;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, e.hire_date, COUNT(t.title) as "amount of titles"
FROM employees as e
INNER JOIN titles as t ON t.emp_no = e.emp_no
WHERE EXTRACT (year from hire_date) >= 1991
GROUP BY e.emp_no
ORDER BY e.emp_no;


/*
*  Show me all the employees that work in the department development
*  Database: Employees
*/

SELECT e.emp_no, 
       CONCAT(e.first_name, e.last_name) as "Name", 
       de.dept_name 
FROM employees as e
JOIN dept_emp as d USING(emp_no)
JOIn departments as de USING(dept_no)
WHERE d.dept_no = 'd005'
GROUP BY e.emp_no, de.dept_name ;

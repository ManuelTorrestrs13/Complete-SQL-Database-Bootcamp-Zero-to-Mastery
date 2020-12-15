
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT a.customerid,
       CONCAT(a.firstname, a.lastname) as "name",
       a.state,
       b.orderid,
       b.totalamount
FROM customers as a
INNER JOIN orders as b ON b.customerid = a.customerid
WHERE state = 'OH' or state = 'NY' or state = 'OR'
ORDER BY state;

-- Second way
SELECT c.firstname, c.lastname, o.orderid FROM orders AS o
INNER JOIN customers AS c ON o.customerid = c.customerid
WHERE c.state IN ('NY', 'OH', 'OR')
ORDER BY o.orderid;

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT a.prod_id, 
       a.title,
       b.quan_in_stock 
FROM products as a 
INNER JOIN inventory as b ON b.prod_id = a.prod_id
ORDER BY prod_id;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT a.emp_no,
       CONCAT(a.first_name, a.last_name) as "Emp_Name",
       b.dept_no, 
       c.dept_name
FROM employees AS a 
INNER JOIN dept_emp AS b ON b.emp_no = a.emp_no
INNER JOIN departments as c on c.dept_no = b.dept_no 
ORDER BY dept_name;




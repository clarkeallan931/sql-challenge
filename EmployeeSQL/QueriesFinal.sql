
1)
SELECT employees.emp_no,last_name,first_name,sex,salaries.salary FROM employees
JOIN salaries on salaries.emp_no = employees.emp_no


2)
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'
ORDER BY hire_date;

3)
select employees.emp_no,employees.first_name,employees.last_name,department_manager.dept_no, departments.dept_name 
FROM department_manager
INNER JOIN employees 
ON employees.emp_no = department_manager.emp_no
INNER JOIN departments 
ON departments.dept_no = department_manager.dept_no


4)

SELECT employees.emp_no,employees.first_name, employees.last_name, departments.dept_no, departments.dept_name
FROM employees
LEFT JOIN department_manager
ON department_manager.emp_no = employees.emp_no
LEFT JOIN departments 
ON department_manager.dept_no = departments.dept_no;


5)

SELECT first_name,last_name,sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;


6)

CREATE VIEW sales AS
SELECT employees.emp_no,first_name, last_name,departments.dept_name
FROM employees 
INNER JOIN department_employee
ON department_employee.emp_no = employees.emp_no
INNER JOIN departments
ON departments.dept_no = department_employee.dept_no

WHERE employees.emp_no IN
(SELECT emp_no
FROM department_employee
WHERE dept_no IN
(
SELECT dept_no FROM departments
WHERE dept_name = 'Sales')
 );

CREATE VIEW sales_2 AS 
SELECT * FROM sales
WHERE dept_name = 'Sales';

 
7) 

CREATE VIEW sales_dev AS
SELECT employees.emp_no,first_name, last_name, departments.dept_name
FROM employees
INNER JOIN department_employee
ON department_employee.emp_no = employees.emp_no
INNER JOIN departments
ON departments.dept_no = department_employee.dept_no

WHERE employees.emp_no IN
(SELECT emp_no
FROM department_employee
WHERE dept_no IN
(
SELECT dept_no FROM departments
WHERE dept_name = 'Sales' OR dept_name = 'Development'
 )
 );

CREATE VIEW sales_dev_2 AS
SELECT * FROM sales_dev
WHERE dept_name = 'Development' OR
dept_name = 'Sales'
ORDER BY last_name;


######check  for duplicate names and employee numbers ##########
SELECT emp_no,first_name, last_name, COUNT(*) AS CNT
FROM sales_dev_2
GROUP BY emp_no,first_name,last_name
HAVING COUNT(*)>1
ORDER BY last_name;



8)

SELECT last_name, COUNT(last_name) AS "Name Count"
FROM employees 
GROUP BY last_name
ORDER BY "Name Count" DESC;



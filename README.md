## SQL-challenge

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

# Data Tables
departments
dept_emp
dept_manager
employees
salaries
titles

# Data Modeling
Entity Relationship Diagram is included or table schemas provided for all tables.

# Data Engineering
All required columns are defined for each table
Columns are set to the correct data type
Primary Keys set for each table
Correctly references related tables
Tables are correctly related using Foreign Keys
Correctly uses NOT NULL condition on necessary columns
Accurately defines value length for columns

# Data Analysis
List the employee number, last name, first name, sex, and salary of each employee
List the first name, last name, and hire date for the employees who were hired in 1986
List the manager of each department along with their department number, department name, employee number, last name, and first name
List the department number for each employee along with that employee’s employee number, last name, first name, and department name
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
List each employee in the Sales department, including their employee number, last name, and first name
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

# Additional Notes 

ERD Diagram
- Did not put add NOT NULL to any of the columns because all table fields are NOT NULL by default.

Queries
- For questions 6 and 7 some employees were in multiple departments. As a result there were duplicates that did not include 'Sales' or 'Development'. To eliminate these, I added an addtional SELECT WHERE statement to the created view. 
- For the sales and development question (question 7), I was not sure if duplicate employees that worked in the "Sales" AND "Developement" departments. I noticed that some people had the exact same name but different employee numbers. Used this query to chekc: 

SELECT emp_no,first_name, last_name, COUNT(*) AS CNT
FROM sales_dev_2
GROUP BY emp_no,first_name,last_name
HAVING COUNT(*)>1
ORDER BY last_name;


For question 6 sales_2 is the final asnwer. 
For question 7 sales_dev_2 is the final answer. 

I had to get rid of the employeee entries that did not include "Sales or "Development".

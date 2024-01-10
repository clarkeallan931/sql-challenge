# sql-challenge

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
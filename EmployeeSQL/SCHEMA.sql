CREATE table Departments

(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR NOT NULL


);


CREATE table Department_Manager

(
	dept_no VARCHAR(4),
	emp_no INTEGER NOT NULL,
	PRIMARY KEY(dept_no, emp_no)

);

CREATE table titles

(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR NOT NULL


);



Create table Department_Employee

(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY(emp_no,dept_no)


);



CREATE table Employees

(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
	
	

);



CREATE table Salaries

(
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
	
);
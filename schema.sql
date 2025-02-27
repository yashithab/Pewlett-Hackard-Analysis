-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE employees (
	emp_no int NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(40) NOT NULL,
	last_name varchar(40) NOT NULL,
	gender varchar(6) NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
	);
	
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

Create table Titles (
	emp_no int NOT NULL,
	title varchar NOT NULL,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	);
	
CREATE TABLE dept_emp (
	emp_no int NOT NULL,
 	dept_no varchar(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

select * from employees;
-- Create Employees table
CREATE TABLE employees(
emp_no INT PK NOT NULL
birth_date DATE NOT NULL
first_name VARCHAR(20) NOT NULL
last_name VARCHAR(20) NOT NULL
gender VARCHAR(1) NOT NULL
hire_date DATE NOT NULL
);
-- Create Departments table
CREATE TABLE departments(
dept_no VARCHAR(10) NOT NULL,
dept_name VARCHAR(10) NOT NULL,
PRIMARY KEY (dept_no)
);
-- Create Department Managers table
CREATE TABLE dept_managers(
dept_no VARCHAR(10) NOT NULL,
emp_no INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (dept_no) references departments (dept_no),
FOREIGN KEY (emp_no) references employees (emp_no),
PRIMARY KEY (dept_no)
);
-- Create Department Employees table
CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR(10) NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) references employees (emp_no),
FOREIGN KEY (dept_no) references departments (dept_no)
);
-- Create Titles table 
CREATE TABLE titles (
emp_no INT NOT NULL,
title VARCHAR(20) NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) references employees (emp_no)
);
-- Create Salaries table
CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) references employees (emp_no)
);
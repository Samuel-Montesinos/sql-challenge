CREATE TABLE departments (
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no integer,
    emp_title varchar(30) REFERENCES titles(title_id),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date VARCHAR(30),
    PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
    emp_no integer REFERENCES employees(emp_no),
    salary integer
);

CREATE TABLE dept_emp (
    emp_no integer REFERENCES employees(emp_no),
    dept_no VARCHAR(30) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(30) REFERENCES departments(dept_no),
	emp_no integer REFERENCES employees(emp_no)
);
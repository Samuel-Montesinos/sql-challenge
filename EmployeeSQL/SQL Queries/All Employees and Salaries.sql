SELECT employees.emp_no, first_name, last_name, sex, salary
FROM employees, salaries
WHERE employees.emp_no = salaries.emp_no

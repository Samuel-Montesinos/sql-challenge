SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name
FROM employees, dept_manager, departments
WHERE employees.emp_no = dept_manager.emp_no
AND departments.dept_no = dept_manager.dept_no

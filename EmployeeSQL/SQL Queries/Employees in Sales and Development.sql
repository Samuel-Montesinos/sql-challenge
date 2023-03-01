SELECT departments.dept_no, employees.emp_no, last_name, first_name, dept_name
FROM employees, dept_emp, departments
WHERE employees.emp_no = dept_emp.emp_no
AND departments.dept_no = dept_emp.dept_no
AND (dept_name = 'Sales'
OR dept_name = 'Development')

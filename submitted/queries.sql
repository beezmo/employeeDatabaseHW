-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.gender, 
	s.salary
FROM salaries s
JOIN employees e 
ON e.emp_no = s.emp_no;

-- List employees who were hired in 1986.
SELECT *
FROM employees
WHERE (
	hire_date >= '1986/01/01' AND
	hire_date <= '1986/12/31'
);

-- List the manager of each department with the following info: 
-- dept number, dept name, the manager's employee number, 
-- last name, first name, and start and end employment dates.
-- NB: HIRE DATE BELOW DOES NOT MEAN START DATE OF MGMT POSITION
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name,
	e.hire_date, m.to_date
FROM dept_manager m
LEFT JOIN departments d
ON m.dept_no = d.dept_no
LEFT JOIN employees e
ON e.emp_no = m.emp_no;
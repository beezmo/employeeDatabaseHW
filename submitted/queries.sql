-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.gender, 
	s.salary
FROM salaries s
JOIN employees e ON
e.emp_no = s.emp_no;

-- List employees who were hired in 1986.
SELECT *
FROM employees
WHERE (
	hire_date >= '1986/01/01' AND
	hire_date <= '1986/12/31'
);


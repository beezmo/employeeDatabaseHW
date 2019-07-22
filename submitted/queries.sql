-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
select 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.gender, 
	s.salary
from salaries s
join employees e ON
e.emp_no = s.emp_no;
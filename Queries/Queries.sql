SELECT employees.emp_no, employees.first_name, employees.last_name, titles.title,titles.from_date, titles.to_date
INTO retirement_info
FROM employees ,titles
WHERE  employees.emp_no = titles.emp_no
AND employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31';

select * from retirement_info;

SELECT DISTINCT ON (retirement_info.emp_no) retirement_info.first_name, retirement_info.last_name, retirement_info.title
into unique_titles
from retirement_info
WHERE(to_date != '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

select * from unique_titles;

SELECT DISTINCT ON (employees.emp_no) employees.emp_no, employees.first_name, employees.last_name, employees.birth_date,
dept_emp.from_date,dept_emp.to_date, titles.title
into mentorship_eligibilty
from employees
INNER join dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER join titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-01')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY employees.emp_no;

select * from mentorship_eligibilty;

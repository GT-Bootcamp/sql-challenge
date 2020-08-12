-- Queries to answer questions
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name  
FROM departments   
Inner JOIN dept_manager ON departments.dept_no=dept_manager.dept_no  
Inner JOIN employees ON dept_manager.emp_no = employees.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name  
FROM departments   
Inner JOIN dept_manager ON departments.dept_no=dept_manager.dept_no  
Inner JOIN employees ON dept_manager.emp_no = employees.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE '%Hercules%'
AND last_name LIKE '%B%'
ORDER BY first_name;

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name  
FROM departments   
Inner JOIN dept_emp ON departments.dept_no=dept_emp.dept_no  
Inner JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name LIKE '%Sales%'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name  
FROM departments   
Inner JOIN dept_emp ON departments.dept_no=dept_emp.dept_no  
Inner JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name LIKE '%Sales%' OR dept_name LIKE '%Development%'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count (last_name) AS Frequency
from employees
group by last_name
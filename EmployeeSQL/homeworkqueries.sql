--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
Select 
	e.emp_no as "Employee Number",
	e.first_name "First Name",
	e.last_name as "Last Name", 
	e.sex as "Sex",
	s.salary as "Salary"
from employees e
join salaries s on e.emp_no =s.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
--ideally I could wanted to make hire/birthday be DATE data type but there was an issue with import the file. I was unable to so I had to make it varchar. 
--I would have then tried to use between 01/01/1986 and 12/31/1986
Select 
	first_name "First Name",
	last_name as "Last Name", 
	hire_date as "Hire Date"
from employees 
WHERE hire_date like '%1986';

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select * from dept_manager 
select * from departments d

select 
	m.dept_no as "Department Number",
	dept_name as "Department Name",
	m.emp_no as "Manager Employee Number",
	e.first_name "First Name",
	e.last_name as "Last Name"
from dept_manager m
join departments d on m.dept_no=d.dept_no
join employees e on m.emp_no=e.emp_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
--dept_emp has duplicate empoyees numbers - so you will see duplicates - employee tables like these should normally have dates assocaited 
Select 
	e.emp_no as "Employee Number",
	e.first_name "First Name",
	e.last_name as "Last Name", 
	d.dept_name as "Department Name"
from dept_emp de
join departments d on de.dept_no=d.dept_no
join employees e on e.emp_no =de.emp_no;


--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select 
	first_name "First Name",
	last_name as "Last Name", 
	sex as "Sex"
from employees 
WHERE first_name = 'Hercules' and last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select 
	e.emp_no as "Employee Number",
	e.first_name "First Name",
	e.last_name as "Last Name", 
	d.dept_name as "Department Name"
from dept_emp de
join departments d on de.dept_no=d.dept_no
join employees e on e.emp_no =de.emp_no
where d.dept_name ='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select 
	e.emp_no as "Employee Number",
	e.first_name "First Name",
	e.last_name as "Last Name", 
	d.dept_name as "Department Name"
from dept_emp de
join departments d on de.dept_no=d.dept_no
join employees e on e.emp_no =de.emp_no
where d.dept_name ='Sales' OR d.dept_name ='Development';

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name as "Last Name", count(last_name) as "Frequency Count"
from employees 
group by last_name
Order by "Frequency Count" DESC;


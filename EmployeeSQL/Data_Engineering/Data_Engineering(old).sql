	CREATE TABLE dept_manager
	(
	id SERIAL PRIMARY KEY,
	emp_no int,
	dept_no int
	);

	CREATE TABLE dept_emp
	(
	id SERIAL PRIMARY KEY,
	emp_no int,
	dept_no int
	);

	CREATE TABLE titles
	(
	id SERIAL PRIMARY KEY,
	title_id varchar(10),
	title varchar(30)
	);

	CREATE TABLE departments
	(
	id SERIAL PRIMARY KEY,
	dept_name varchar(30),
	dept_no int,
	FOREIGN KEY (dept_no) REFERENCES dept_manager(id)
	);


	CREATE TABLE employees
	(
	id SERIAL PRIMARY KEY,
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES dept_manager(id),
	emp_title_id int,
	FOREIGN KEY (emp_title_id) REFERENCES titles(id),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(5),
	hire_date date
	);

	CREATE TABLE salaries
	(
	id SERIAL PRIMARY KEY,
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES dept_manager(id),
	salary int
	);
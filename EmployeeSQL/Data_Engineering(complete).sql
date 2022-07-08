	CREATE TABLE departments (
		dept_no VARCHAR(4) PRIMARY KEY,
		dept_name VARCHAR NOT NULL
	);
	
	CREATE TABLE titles (
		emp_title_id VARCHAR(5) PRIMARY KEY,
		title VARCHAR(30)
	);
	
	CREATE TABLE employees (
		emp_no INTEGER PRIMARY KEY,
		emp_title_id VARCHAR(5),
		FOREIGN KEY (emp_title_id) REFERENCES titles(emp_title_id),
		birth_date DATE,
		first_name VARCHAR(30),
		last_name VARCHAR(30),
		sex CHAR,
		hire_date DATE
	);
	
	CREATE TABLE dept_emp (
		emp_no INTEGER,
		dept_no VARCHAR,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no)  REFERENCES employees(emp_no)
	);
	
	CREATE TABLE dept_manager (
		dept_no VARCHAR(4) NOT NULL,
		emp_no INTEGER NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no)  REFERENCES employees(emp_no)
	);


	CREATE TABLE salaries (
		emp_no INTEGER,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		salary INTEGER
	);
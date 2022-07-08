-- Data Analysis

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
CREATE VIEW DA_item1_salary AS (
	SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary FROM employees 
	INNER JOIN salaries 
	ON employees.emp_no=salaries.emp_no
);

SELECT * FROM DA_item1_salary
ORDER BY last_name ASC, first_name;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.

CREATE VIEW DA_item2_1986 AS (
	SELECT first_name, last_name, hire_date FROM employees 
	WHERE EXTRACT(YEAR FROM hire_date) = 1986
);

SELECT * FROM DA_item2_1986
ORDER BY hire_date ASC, first_name, last_name;


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

CREATE VIEW DA_item3_departmentmgr AS (
	SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name 
	FROM departments 
	INNER JOIN dept_manager ON departments.dept_no=dept_manager.dept_no
	INNER JOIN employees ON dept_manager.emp_no=employees.emp_no
);

SELECT * FROM DA_item3_departmentmgr
ORDER BY last_name ASC, first_name;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

CREATE VIEW DA_item4_empdept AS (
	SELECT emp_no, last_name, first_name, dept_name
	FROM DA_item3_departmentmgr
);

SELECT * FROM DA_item4_empdept
ORDER BY last_name ASC, first_name;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

CREATE VIEW DA_item5_Hercules AS (
	SELECT first_name, last_name, sex
	FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
);

SELECT * FROM DA_item5_Hercules;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

CREATE VIEW DA_item6_salesdept AS (
	SELECT emp_no, last_name, first_name, dept_name
	FROM DA_item3_departmentmgr
	WHERE dept_name = 'Sales'
);

SELECT * FROM DA_item6_salesdept
ORDER BY last_name ASC, first_name;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

CREATE VIEW DA_item7_SDdept AS (
	SELECT emp_no, last_name, first_name, dept_name
	FROM DA_item3_departmentmgr
	WHERE dept_name = 'Sales' OR dept_name = 'Development'
);

SELECT * FROM DA_item7_SDdept
ORDER BY last_name ASC, first_name;

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

CREATE VIEW DA_item8_lastname AS (
	SELECT last_name, COUNT(*)
	FROM employees
	GROUP BY last_name
);

SELECT * FROM DA_item8_lastname
ORDER BY last_name DESC;

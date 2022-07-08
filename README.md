# sql-challenge

## Summary:
Completed Data Modeling ERD (https://app.quickdatabasediagrams.com/#/d/DDOkLq).
Completed SQL code to create tables (Data_Engineering.sql), imported csv files (data folder), performed analysis (Data_Analysis.sql) as outlined in the HW and listed below.



### Data Modeling
Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like http://www.quickdatabasediagrams.com.


### Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.

Be sure to create tables in the correct order to handle foreign keys.

Import each CSV file into the corresponding SQL table.


### Data Analysis

List the following details of each employee: employee number, last name, first name, sex, and salary.

List first name, last name, and hire date for employees who were hired in 1986.

List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

List the department of each employee with the following information: employee number, last name, first name, and department name.

List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

List all employees in the Sales department, including their employee number, last name, first name, and department name.

List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.


### Bonus

Import the SQL database into Pandas.

Create a histogram to visualize the most common salary ranges for employees.

Create a bar chart of average salary by title.

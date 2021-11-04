-- drop statements
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS departments;

-- create the employee table
CREATE TABLE employee
(
	employee_id INT PRIMARY KEY,
	name VARCHAR,
	dob DATE,
	department_id INT
);

-- create the department table
CREATE TABLE departments
(
	department_id INT PRIMARY KEY,
	department_name VARCHAR
);

-- populate the department table
INSERT INTO departments (department_id, department_name)
VALUES (1, 'Human Resources'),
(2, 'Development'),
(3, 'Sales'),
(4, 'Technical Support');

-- populate the employee table
INSERT INTO employee (employee_id, name, dob, department_id)
VALUES (1,'Alan Smith','19890101',1),
       (2,'Sultan Nader','19920101',1),
       (3,'Mohd Rasheed','19990101',2),
       (4,'Brian Wallace','19790101',3),
       (5,'Peter Hilton','19860101',NULL);
	   
-- select all from employee
SELECT * FROM employee;

-- select all from departments
SELECT * FROM departments;

-- Inner Join Example --
-- first, specify the columns we want to retrieve within the SELECT clause
-- then specify the tables needed to read from and to specify the join type within the FROM clause
-- finally, specify the columns used to perform the join operation after the ON keyword

SELECT employee_id, name, dob, department_name
FROM employee INNER JOIN departments
ON employee.department_id = departments.department_id;

-- returns all records except for the fifth employee 
-- the fifth employee is not shown in the result since it is not assigned to any department. 
-- Also, we can note that the Department_Name is retrieved instead of the Department id.

-- Left Join Example

SELECT employee_id, name, dob, department_name
FROM employee LEFT JOIN departments
ON employee.department_id = departments.department_id;

-- the query result returned all five employees listed 
-- within the table with a NULL value in the Department_Name 
-- column in the fifth row since Peter Hilton is not assigned to any department yet.

-- Right Join Example

SELECT employee_id, name, dob, department_name
FROM employee RIGHT JOIN departments
ON employee.department_id = departments.department_id;

-- the query result, the query returned the 
-- same rows of the INNER JOIN query in addition to the Technical 
-- support department that doesn’t have any employees

-- Full Outer Join Example

SELECT employee_id, name, dob, department_name
FROM employee FULL OUTER JOIN departments
ON employee.department_id = departments.department_id;

-- the Full join query will return all employees working 
-- within departments plus all employees that are not 
-- assigned and all departments that don’t contain any employees

-- Cross Join Example

SELECT employee_id, name, dob, department_name
FROM employee CROSS JOIN departments;

-- the Cross Join query will return a combination 
-- of all departments with all employees
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS departments;

CREATE TABLE employee
(
	employee_id INT PRIMARY KEY,
	name VARCHAR,
	dob DATE,
	department_id INT
);

CREATE TABLE departments
(
	department_id INT PRIMARY KEY,
	department_name VARCHAR
);

INSERT INTO departments (department_id, department_name)
VALUES (1, 'Human Resources'),
(2, 'Development'),
(3, 'Sales'),
(4, 'Technical Support');


INSERT INTO employee (employee_id, name, dob, department_id)
VALUES (1,'Alan Smith','19890101',1),
       (2,'Sultan Nader','19920101',1),
       (3,'Mohd Rasheed','19990101',2),
       (4,'Brian Wallace','19790101',3),
       (5,'Peter Hilton','19860101',NULL);
	   
SELECT * FROM employee;

SELECT * FROM departments;
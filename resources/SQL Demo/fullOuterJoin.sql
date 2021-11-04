-- Full Outer Join Example

SELECT employee_id, name, dob, department_name
FROM employee FULL OUTER JOIN departments
ON employee.department_id = departments.department_id;

-- the Full join query will return all employees working 
-- within departments plus all employees that are not 
-- assigned and all departments that don’t contain any employees
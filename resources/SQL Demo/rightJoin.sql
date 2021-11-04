-- Right Join Example

SELECT employee_id, name, dob, department_name
FROM employee RIGHT JOIN departments
ON employee.department_id = departments.department_id;

-- the query result, the query returned the 
-- same rows of the INNER JOIN query in addition to the Technical 
-- support department that doesn’t have any employees
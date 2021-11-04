-- Cross Join Example

SELECT employee_id, name, dob, department_name
FROM employee CROSS JOIN departments;

-- the Cross Join query will return a combination 
-- of all departments with all employees
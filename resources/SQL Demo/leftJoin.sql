-- Left Join Example

SELECT employee_id, name, dob, department_name
FROM employee LEFT JOIN departments
ON employee.department_id = departments.department_id;

-- the query result returned all five employees listed 
-- within the table with a NULL value in the Department_Name 
-- column in the fifth row since Peter Hilton is not assigned to any department yet.
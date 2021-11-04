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
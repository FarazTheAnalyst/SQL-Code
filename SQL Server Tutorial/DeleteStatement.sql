USE employee_DB;

--retrieve all records from employee_info table
SELECT * FROM employee_info;

-- delete records from employee_info table where depId is 10
DELETE FROM employee_info
WHERE depId = 10;

-- delete all records form employee_info table
DELETE FROM employee_info;
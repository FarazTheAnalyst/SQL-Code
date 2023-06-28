-- TOP Claue specifies the first n rows of the query result that are to be retrieved
-- This clause should always be used with order by clause
SELECT * FROM employee_info;

-- using TOP clause retrieving top highest salaries
SELECT TOP(3) empSalary FROM employee_info
ORDER BY empSalary DESC;

-- retrieving top lowest 3 values
SELECT TOP(3) empSalary FROM employee_info
ORDER BY empSalary;
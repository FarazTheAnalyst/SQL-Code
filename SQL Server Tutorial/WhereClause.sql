-- using WHERE CLAUSE you can restrict a query to rows that meet a condition
-- you can use any operators in WHERE CLAUSE

-- retrieve or filter data where depId is 10
SELECT * FROM employee_info
WHERE depId = 10;

-- retrieve data from employee_info where job is equal to DEVELOPER
SELECT * FROM employee_info
WHERE job = 'DEVELOPER';

-- retrieve data from employee_info where job is equal to DESIGNER
SELECT * FROM employee_info
WHERE job = 'DESIGNER';

-- retrieve empName and empSalary from employee_info where job is equal to DESIGNER
SELECT empName, empSalary FROM employee_info
WHERE job = 'DESIGNER';

-- update salary with 5000 increment to each salary where depId is 20
UPDATE employee_info
SET empSalary = empSalary + 5000
WHERE depId = 20;

-- retreive data from employee_info
SELECT * FROM employee_info;

-- deleting data from employee
DELETE FROM employee_info
WHERE depId = 30;

-- get data from employee_info
SELECT * FROM employee_info;
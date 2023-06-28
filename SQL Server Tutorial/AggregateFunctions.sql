use employee_DB;

-- aggregate function are sum, min, max, avg, count most commonly used
-- retreive data from employee_info table
SELECT * FROM employee_info;

-- using aggregate function
SELECT SUM(empSalary) AS AVG_SALARY FROM employee_info;

-- changing employee_info table column empSalary datatype
ALTER TABLE employee_info
ALTER COLUMN empSalary DECIMAL(10,2);

-- CHANGING	a datatype of depId column
ALTER TABLE employee_info
ALTER COLUMN depId INTEGER NULL;

-- find the max salary from employee_info
SELECT MAX(empSalary) FROM employee_info;

-- find the min salary
SELECT MIN(empSalary) AS MIN_SALARY FROM employee_info;

-- find the count of employee_info
-- count function count values in a particular column
SELECT COUNT(*) AS 'COUNT of rows' FROM employee_info;

-- let's insert a one value in a employee_info
INSERT INTO employee_info(empId, empName, empSalary) VALUES(7, 'ROSS', 15000);

-- get data from employee_info
SELECT * FROM employee_info;

-- count values in empName column
SELECT COUNT(empName) AS NO_OF_VALUES FROM employee_info;
count values in job column
SELECT COUNT(job) AS NO_OF_VALUES FROM employee_info;
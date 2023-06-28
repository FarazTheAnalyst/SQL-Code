USE employee_DB;

-- ORDER BY CLAUSE:
-- used to sort/arrange records in either ascending or descending order
-- always used with select statement

-- sorting data in ascending order
SELECT * FROM employee_info
ORDER BY empSalary;

-- sorting data in descending order
SELECT * FROM employee_info
ORDER BY empSalary DESC;

-- sorting string data in ascending order
SELECT empName FROM employee_info
ORDER BY empName;

-- soring string data in descending order
SELECT empName FROM employee_info
ORDER BY empName DESC;
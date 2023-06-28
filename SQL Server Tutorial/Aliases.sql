-- Aliasing 
-- can be used to create a temporary name for columns and tables

-- column Alias
-- are used to make column headings in a query easier to read
--(especially with function and column headings)

-- table Alies
-- are used to shorten your sql to make easier to read(especially in join,
-- subquerys)
USE employee_DB;

-- RETRIEVE DATA
SELECT * FROM employee_info;

-- get employee salary
SELECT empSalary FROM employee_info;

-- get employee salary with Alias name
SELECT empSalary AS 'employee Salary' FROM employee_info;
SELECT empSalary AS employee_Salary FROM employee_info;

-- Alias for all columns
SELECT empId AS employee_Id, empName AS employee_Name, 
empSalary AS employee_Salary, depId as 'deparment ID'
FROM employee_info;
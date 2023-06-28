-- GROUP BY CLAUSE
-- defines on or more columns as a group such that all the rows whithin any group 
-- have the same values for those columns
-- always used with select statement
SELECT depId FROM employee_info
GROUP BY depId;

-- GROUP BY CLAUSE BY ADDING AGGREGATE FUNCTION
SELECT depId, sum(empSalary) AS 'TOTAL SALARY' FROM employee_info
GROUP BY depId;

-- FINDING OUT the minimum salary
SELECT ROUND(MIN(empSalary),2) AS 'MINIMUM SALARY' FROM employee_info
GROUP BY depId;
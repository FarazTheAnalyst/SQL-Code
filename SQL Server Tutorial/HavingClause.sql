--  The HAVING CLAUSE defines the condition that is then applied to group of rows
-- always used with select statement inside GROUP BY CLAUSE
SELECT * FROM employee_info;

-- with out having clause
SELECT depId, SUM(empSalary) AS 'TOTAL SALARY' FROM employee_info
GROUP BY depId;

-- having clause filter the data after grouping results
SELECT depId, SUM(empSalary) AS 'TOTAL SALARY' FROM employee_info
GROUP BY depId
HAVING depId = 20;

-- with WHERE CLAUSE not using HAVING CLAUSE
SELECT depId, SUM(empSalary) AS 'TOTAL SALARY' FROM employee_info
WHERE depId = 20
GROUP BY depId;

-- using having clause
SELECT depId, sum(empSalary) AS 'TOTAL SALARY' FROM employee_info
GROUP BY depId 
HAVING SUM(empSalary) > 30000;

SELECT depId, sum(empSalary) AS 'TOTAL SALARY' FROM employee_info
GROUP BY depId 
HAVING SUM(empSalary) BETWEEN 12000 AND 45000;
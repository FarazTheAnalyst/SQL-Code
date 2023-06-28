-- return all rows from both left hand and right hand table with matching table
-- FULL OUTER JOIN
SELECT EMP_ID, EMP_NAME, EMP_SALARY, DEPT_NAME, DEPT_LOCATION
FROM employee FULL OUTER JOIN department
ON employee.EMP_DEPID = department.DEPT_ID;

-- FULL OUTER JOIN WITH TABLE ALIAS NAME
SELECT e.EMP_ID, e.EMP_NAME, e.EMP_SALARY, d.DEPT_NAME, d.DEPT_LOCATION
FROM department d FULL OUTER JOIN employee e
ON e.EMP_DEPID = d.DEPT_ID;

-- Left OUTER JOIN
-- return all rows from the left hand table and the records in the right hand 
-- table with the matching values
SELECT EMP_ID, EMP_NAME, EMP_SALARY, DEPT_ID, DEPT_NAME, DEPT_LOCATION
FROM employee LEFT OUTER JOIN department
ON employee.EMP_DEPID = department.DEPT_ID;

-- LEFT OUTER JOIN WITH TABLE ALIAS
SELECT e.EMP_ID, e.EMP_NAME, e.EMP_SALARY, d.DEPT_NAME, d.DEPT_LOCATION
FROM employee e LEFT OUTER JOIN department d
ON e.EMP_DEPID = d.DEPT_ID;
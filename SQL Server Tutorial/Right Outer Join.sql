-- Right Outer Join
-- return all rows from the right table and the records in the left-hand table
-- with matching values

-- LEFT OUTER JOIN
SELECT EMP_ID, EMP_NAME, EMP_SALARY, DEPT_NAME, DEPT_LOCATION
FROM employee RIGHT OUTER JOIN department
ON employee.EMP_DEPID = department.DEPT_ID;

-- LEFT OUTER JOIN WITH ALIASING
SELECT e.EMP_ID, e.EMP_NAME, e.EMP_SALARY, d.DEPT_NAME, d.DEPT_LOCATION
FROM employee e RIGHT OUTER JOIN department d
ON e.EMP_DEPID = d.DEPT_ID;
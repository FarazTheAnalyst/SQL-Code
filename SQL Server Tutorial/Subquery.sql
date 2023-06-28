-- A query within another sql query embeded wihthin the WHERE CLAUSE
-- Subquery must be enclosed within parenthesis()
-- Subquery can be used with the SELECT, INSERT , UPDATE, DELETE
-- along with the comparison operator
-- subquery can have only one column in the SELECT statement

/*** Display name, salary of employee whose salary is greater than mik's salary ***/
SELECT * FROM employee;

SELECT emp_name, emp_salary FROM employee
WHERE emp_salary > (SELECT emp_salary FROM employee WHERE emp_name = 'Mike');

-- Display name, salary of employee whose salary is greater than adam's salary
-- and depno same as Adam
SELECT EMP_NAME, EMP_SALARY FROM employee
WHERE EMP_SALARY > (SELECT EMP_SALARY FROM employee WHERE EMP_NAME = 'ADAM')
AND EMP_DEPID = (SELECT EMP_DEPID FROM employee WHERE EMP_NAME = 'ADAM');

-- Dispaly the employee information whose department is located at NEW YORK
SELECT EMP_NAME, EMP_SALARY FROM employee
WHERE EMP_DEPID = (SELECT DEPT_ID FROM department WHERE DEPT_LOCATION = 'NEW YORK');


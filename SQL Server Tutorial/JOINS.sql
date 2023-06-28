-- JOINS
-- Joins used to retrieve data from multiple tables

-- inner join
-- inner join is the most commonly used join in sql server
-- it returns all the rows from the multiple tables where the join condition is 
-- satisfied 

--create table employee
USE	employee_DB;

CREATE TABLE employee(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(50) NOT NULL,
EMP_SALARY DECIMAL(10,2) NOT NULL,
EMP_DEPID VARCHAR(50)
);

-- INSERT DATA 
INSERT INTO employee VALUES(1111, 'STEVE', 35000, 'D1'),
(1112, 'ADAM', 28000, 'D2'),
(1113, 'JOHN', 50000, 'D3'),
(1114, 'MIKE', 45000, 'D2'),
(1115, 'PETER', 60000, 'D5');

--CHECKING INSERTED DATA
SELECT * FROM employee;

-- CREATE TABLE DEPARTMENT
CREATE TABLE department(
DEPT_ID VARCHAR(50),
DEPT_NAME VARCHAR(50) NOT NULL,
DEPT_LOCATION VARCHAR(50));

-- checking data
-- INSERT DATA 
INSERT INTO department VALUES('D1', 'DEVELOPMENT', 'CALIFORNIA'),
('D2', 'MARKETING', 'FAISALABAD'),
('D3', 'ACCOUNTS', 'NEW YORK'),
('D4', 'MANAGMENT', 'FAISALABAD');


-- checking data
SELECT * FROM department;

-- MAKING INNER JOIN
SELECT  EMP_ID, EMP_NAME, EMP_SALARY, DEPT_NAME, DEPT_LOCATION
FROM employee INNER JOIN department
ON employee.EMP_DEPID = department.DEPT_ID;

-- INNER JOIN WITH TABLE ALIAS
SELECT e.EMP_ID, e.EMP_NAME, e.EMP_SALARY, d.DEPT_NAME, d.DEPT_LOCATION
FROM employee e INNER JOIN department d
ON e.EMP_DEPID = D.DEPT_ID;
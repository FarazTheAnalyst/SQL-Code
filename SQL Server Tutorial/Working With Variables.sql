-- Working with Varibles
-- in every Programming Language, variables are generally used to temporarly store
-- values in memory

--ASSIGN A VALUE TO VARIABLE
-- Both SET and SELECT command assisgn a value to a variable
-- SET 
-- can only set a value of one variable at a time
-- SELECT 
-- command retrive data from tables and assign multiple values with a single statement

-- INCREAMENTING VARIABLE
-- with variable increament variable feature, we can perform mathematical operation like
-- (addition, subtraction, multiplication) on the variable
USE employee_DB;

-- CREATING a new variable
-- USE THREE FIVE LINES OF CODE TOGATHER TOGATHER
DECLARE @name VARCHAR(50);
SELECT @name = 'Faraz';
SELECT @name;

SET @name = 'Gill';
SELECT @name;

-- USE THREE THREE LINES TOGATHER
DECLARE @name VARCHAR(50), @age INT, @SALARY DECIMAL(8,2) = 45000;
SELECT @name = 'Faraz', @age = 30;
SELECT @name AS NAME, @age as AGE, @SALARY AS SALARY;

-- ADDING value to variable
DECLARE @number INT = 100;
SET @number += 50;
SELECT @number AS 'NUMBER';

SET @number = @number - 50;
SELECT @number AS 'NUMBER';

SET @number *= 50;
SELECT @number AS 'NUMBER';

-- check employee table
SELECT * FROM employee;

-- create a variable and assign a value from employee table column
DECLARE @name VARCHAR(50), @salary DECIMAL(8, 2);
SELECT @name = EMP_NAME, @salary = EMP_SALARY 
FROM employee;
SELECT @name AS NAME, @salary AS SALARY;













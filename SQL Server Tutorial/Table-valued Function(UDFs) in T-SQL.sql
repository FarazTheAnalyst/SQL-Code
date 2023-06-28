--TABLE VALUES FUNCTION
-- user defined table valued functions return a table data type
-- table valued functions accept zero or more parameters

--Types
-- inline table valued function
-- there is no function (i.e there is no need for a BEGIN-END block in an inline
-- function)
--table is the result of single select statement

--Create a function to get employees information by passing employee salary
USE employee_DB;

CREATE FUNCTION getAllEmployees(@salary DECIMAL)
RETURNS TABLE
AS 
RETURN
	SELECT * FROM employee_info
	WHERE empSalary = @salary;

-- Execute above created function
SELECT * FROM dbo.getAllEmployees(45000);

-- Multi-statement Table-valued function
-- it contains multiple SQL statements enclosed in BEGIN-END blocks.
-- the return value is declared as a TABE-VARIABLE. The return statement 
-- is without a value and the declared table variable is returned.

-- Create a function to get a list of all employees by passing department id
CREATE FUNCTION getEmployees(@id VARCHAR(50))
RETURNS @Result TABLE
(ID INT, NAME VARCHAR(50), SALARY DECIMAL, DEPID VARCHAR(50))
AS
BEGIN
	INSERT INTO @Result
	SELECT * FROM employee WHERE EMP_depId = @id;
	Return
END;
	
SELECT * FROM getEmployees('D3');
	





















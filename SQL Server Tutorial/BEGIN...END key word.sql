-- BEGIN...END 
-- The BEGIN...END keywords are used to group mulitple lines into one
-- statement block
-- In addition, BEGIN...END can be nested. It simply means that we can place 
-- BEGIN.END statement within another BEGIN...END statement.
USE employee_DB;
GO

SELECT * FROM employee;
GO

BEGIN
	DECLARE @name VARCHAR(50), @salary INTEGER, @DEPTID VARCHAR(10) = 'D3';
	SELECT @name = EMP_ID, @salary = EMP_SALARY FROM employee
	WHERE EMP_DEPID = @DEPTID;

	SELECT @name AS NAME, @salary AS SALARY;

	BEGIN 
		PRINT 'Department ID :'  + @DEPTID;
	END
END
GO

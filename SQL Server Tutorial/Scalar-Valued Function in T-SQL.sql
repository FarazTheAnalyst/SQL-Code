-- Create a function to get a employee salary by passing employee name
CREATE FUNCTION salary (@name VARCHAR(50))
RETURNS DECIMAL
BEGIN
	DECLARE @sal DECIMAL;

	SELECT @sal = EMP_SALARY FROM employee
	WHERE EMP_NAME = @name;

	RETURN @sal;

END;
GO

-- We must use dbo.salary in user defined function otherwise it will not recognised
SELECT dbo.salary('MIKE') AS EMPLOYEE_SALARY;
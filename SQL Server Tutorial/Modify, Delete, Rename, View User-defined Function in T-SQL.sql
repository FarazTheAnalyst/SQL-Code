CREATE FUNCTION [dbo].[getallemployees](@salary DECIMAL)
RETURNS TABLE
AS 
RETURN
	SELECT * FROM employee_info
	WHERE empSalary = @salary;

-- modify 
ALTER FUNCTION [dbo].[getallemployees](@salary DECIMAL)
RETURNS TABLE
AS 
RETURN
	SELECT empId, empName, empSalary FROM employee_info
	WHERE empSalary = @salary;

-- MODIFY SCALER VALUE FUNCTION
ALTER FUNCTION [dbo].[salary] (@name VARCHAR(50))
RETURNS DECIMAL
BEGIN
	DECLARE @sal DECIMAL;

	SELECT @sal = EMP_SALARY FROM employee
	WHERE EMP_NAME = @name;

	RETURN @sal;

END;
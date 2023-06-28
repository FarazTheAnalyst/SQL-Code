--ALTER (Modify) STORE PROCEDURE
-- we can modify a previously created stored procedure
-- to perform modification, we need to use ALTER command
USE employee_DB;
GO
ALTER procedure proc_allEmployeeDetails
AS
BEGIN
	SELECT e.EMP_NAME, e.EMP_SALARY, d.DEPT_LOCATION
	FROM employee e INNER JOIN department d
	ON e.EMP_DEPID = d.DEPT_ID;
END;
GO

EXEC proc_allEmployeeDetails;
GO

ALTER PROCEDURE proc_allEmployeeLocationWiseDetails(@LOCATION VARCHAR(10))
AS
BEGIN
	SELECT e.EMP_NAME, e.EMP_SALARY, d.DEPT_LOCATION, d.DEPT_NAME
	FROM employee e INNER JOIN department d
	ON e.EMP_DEPID = d.DEPT_ID
	WHERE D.DEPT_LOCATION = @LOCATION;
END;
GO

EXEC proc_allEmployeeLocationWiseDetails @LOCATION = 'FAISALABAD';
GO
EXECUTE proc_allEmployeeLocationWiseDetails @LOCATION = 'NEW YORK';
GO
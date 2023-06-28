-- Crete a stored procedure that returns all emplyess whose department 
-- location is Faisalabad
USE employee_DB;
GO

CREATE PROCEDURE proc_allEmployeeLocationWiseDetails(@LOCATION VARCHAR(10))
AS
BEGIN
	SELECT * FROM employee e INNER JOIN department d
	ON e.EMP_DEPID = d.DEPT_ID
	WHERE D.DEPT_LOCATION = @LOCATION;
END
GO

-- Execute above stored procedure with location Faisalabad
EXECUTE proc_allEmployeeLocationWiseDetails @LOCATION = 'FAISALABAD';

-- location NEW YORK
EXECUTE proc_allEmployeeLocationWiseDetails @LOCATION = 'NEW YORK';
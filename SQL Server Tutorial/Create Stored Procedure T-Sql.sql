-- STORED PROCEDURE
-- Two ways to create(or defined) a stored procedure
-- stored procedure without parameters (simple stored procedure)
-- stored procedure with parameters
use employee_DB;
GO

CREATE PROCEDURE proc_allEmployeeDetails
AS
BEGIN
	SELECT * FROM employee_info;
END
GO

-- Execute a stored procedure that we created above
-- We can EXECUTE OR EXEC command
EXECUTE proc_allEmployeeDetails;

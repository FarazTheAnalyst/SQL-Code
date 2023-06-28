-- Rename a Stored Procedure
-- To Rename the Existing stored procedure, we need to use system procedure

-- DRAWBACKS (or limitations)
-- Renaming a stored procedure does not change the name of the following
-- object name in the defination column of the sys.sql_modules catalog view
-- to do that, you must drop and re-create the stored procedure with its new name

-- changing the name or defination of a procedure can cause dependent objects to fail
-- when the objects are not updated to reflect the changes that have been made to the 
-- procedure
USE employee_DB;
GO
Exec sp_rename proc_allEmployeeDetails, proc_displayEmloyeeDetails;
GO

SELECT * FROM sys.sql_modules;
GO

CREATE PROCEDURE proc_displayEmloyeeDetails
AS
BEGIN
	SELECT e.EMP_NAME, e.EMP_SALARY, d.DEPT_LOCATION
	FROM employee e INNER JOIN department d
	ON e.EMP_DEPID = d.DEPT_ID;
END;
GO

SELECT * FROM sys.sql_modules;
GO












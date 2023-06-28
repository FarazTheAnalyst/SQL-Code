-- WAITFOR
-- blocks the execution of batch, stored procedure, or transaction until
-- a specified time or time interval elapses. or a specified statement modifies or returns
-- at least one row.

-- WAITFOR has two arguments
-- TIME
-- the period of time to pass, time to pass
-- DELAY
-- the time (up to a 24 hours) at which WAITFOR statement finishes.

--WAITFOR TIME
SELECT GETDATE() AS 'current time';
GO
BEGIN
	WAITFOR TIME '23:17:30'
	SELECT * FROM employee_DB.dbo.employee_info;
END
GO
SELECT GETDATE() AS 'CURRENT_TIME';
GO

-- WAITFOR DELAY
SELECT GETDATE() AS 'CURRENT TIME';
GO
BEGIN
	WAITFOR DELAY '00:00:10'
	SELECT * FROM employee_DB.dbo.employee_info;
END
GO
SELECT GETDATE() AS 'CURRENT_TIME';
GO
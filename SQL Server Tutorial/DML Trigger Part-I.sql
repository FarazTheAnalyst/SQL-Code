--things to know before creating a trigger

--MAGIC Table
--SQL Server automatically creates and manages manages magic tables, DML
-- statements creates two magic tables

-- INSERTED Table
-- this table stores the copies of affected rows during INSERT and UPDATE statements,
--during these transactions,
-- new rows are added to both the inserted table and trigger table

--DELETED Table
-- this table stores the copies of affected rows during DELETE and UPDATE statements
-- during the execution of these statements, rows are deleted from the trigger table
-- and stored into the delete table

-- Create a trigger when new employee added to the employee table
CREATE TRIGGER tr_message
ON employee
AFTER INSERT
AS
BEGIN
	PRINT'NEW EMPLOYEE ADDED';
END;

--INSERTING values
INSERT INTO employee VALUES(1007, 'ARHAM', 40000, 'D3');

--LETS CHECK
SELECT * FROM employee;
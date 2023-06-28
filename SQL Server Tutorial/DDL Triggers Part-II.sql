--EVENTDATA
-- it is a built in function
-- it returns the informatioin about the events executed the DDL Triggers
-- this information is in xml format
CREATE OR ALTER TRIGGER tr_tableRename
ON DATABASE
FOR Rename
AS
	BEGIN
		PRINT'TABLE IS RENAMED'
	END;

sp_rename 'newtemp', 'triggerdemo'

--Create table 
CREATE TABLE ddl_logs(
id INT IDENTITY PRIMARY KEY,
event_data XML,
performed_by SYSNAME,
event_type VARCHAR (200)
);

-- create trigger
CREATE OR ALTER TRIGGER tr_ddlEventTrigger
ON DATABASE
FOR CREATE_TABLE, RENAME, DROP_TABLE
AS
	BEGIN
		INSERT INTO ddl_logs(event_data, performed_by, event_type) 
		VALUES(EVENTDATA(), USER, EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(MAX)'));
	END;

-- we will create a empty table to rename it later
CREATE TABLE triggerdemp(
Id INT PRIMARY KEY,
Name VARCHAR(50),
Salary DECIMAL
);


--rename table triggerdemp to triggerdemO
sp_rename 'triggerdemp', 'triggerdemO'

--create new table
CREATE TABLE demo(
id INT,
value VARCHAR(20)
);

--Check ddl_logs table
SELECT * FROM ddl_logs;

--drop table demo
DROP TABLE demo;
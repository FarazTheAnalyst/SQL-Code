--DDL Triggers
-- DDL Triggers fire in reponse to different DDL events corresponds to sql statements
-- such as CREATE, ALTER, DROP, GRANT, REVOKE etc.

--also some system stored procedures that perform DDL-Like operations
-- (for example, sp_rename) can also fire DDL triggers

-- why DDL Triggers
-- prevent certain changes to your database schema
-- have something occur in the database in reponse to a change in your database schema
--record changes or events in the database schema

--create trigger when new table is created in a database
CREATE TRIGGER tr_onTableCreat
ON DATABASE
FOR CREATE_TABLE
AS
	BEGIN
		PRINT'NEW TABLE IS CREATED SUCCESSFULLY'
	END;

-- CREATE TABLE
CREATE TABLE SampleTable(id INT, name VARCHAR(10));

-- create or alter table
CREATE OR ALTER TRIGGER tr_onCrtDrp
ON DATABASE
FOR CREATE_TABLE, DROP_TABLE
AS
	BEGIN
		print'NEW TABLE CREATED OR DROPED SUCCESSFULLY'
	END;

DROP TABLE SampleTable;
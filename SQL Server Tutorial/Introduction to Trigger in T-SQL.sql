--Trigger
-- a trigger is a type of stored procedure, that automatically runs
-- when an event occurs in the database server

--TYPES
-- DDL Triggers
-- DDL trigger is fired when DDL statements like CREATE TABLE, ALTER TABLE 
--DROP TABLE, TRUNCATE TABLE occurs. DDL triggers are always after triggers

--DML Triggers
-- We can create triggers on DML statements(like INSERT, UPDATE, DELETE) and 
-- Stored procedures. DML Triggers are of three types

-- AFTER Triggers
-- These triggers execute after the action of the INSERT, UPDATE, MERGE, DELETE
-- statement is performed

-- INSTEAD OF Triggers
-- these triggers overrides the standard actions of the traggering statement
-- it can be used to perform a error or value checking on one or more columns
-- these triggers perform a additional actions before INSERT, UPDATING or DELETING
-- row or rows

--CLR Triggers
-- it can be either an AFTER or INSTEAD OF Triggers
-- it can also be a DDL trigger

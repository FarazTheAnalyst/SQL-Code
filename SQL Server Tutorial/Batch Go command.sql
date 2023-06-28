-- BATCH 
-- A batch of sql statements is a group of two or more sql statements or single sql 
-- statement

--STANDARD TYPES OF BATCHES

-- Explicit Batch
-- an explicit batch is a two are more sql statements separated by semicolons(;)

-- Procedure
-- if a procedure contains more than one sql statements, it is considered to be a batch

-- Go command
-- Go command is not a T sql statement, it is recognized by sql server utilities
-- Go command can executed by any user, it requires no permissions.
-- it signals the end of the batch to the sql server utilities.

-- GO[count]
-- [count] is optional, where count is a positive integer, 
-- the batch will execute the specified number of time
USE SampleCompany_DB;
GO

-- We cannot write variable name outside of GO command
DECLARE @name VARCHAR(50);
SELECT @name = 'Microsoft';
SELECT @name AS NAME;
GO

DECLARE @name VARCHAR(50);
SELECT @name = 'Gooogle';
SELECT @name AS NAME;
GO




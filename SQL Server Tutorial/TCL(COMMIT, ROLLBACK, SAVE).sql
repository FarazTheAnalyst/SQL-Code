-- if a transction is successfull. all of the data modification made during the 
-- transction are committed and become a permanent part of database.
-- if a transaction encounters error and must be canceled or rolled back, then all 
-- the data modification are erased.
-- there are three different commands
--COMMIT
--ROLLBACK
--SAVE

--create table
CREATE TABLE sampleTable(id INT);

--insert values in a table
INSERT INTO sampleTable VALUES(1);
INSERT INTO sampleTable VALUES(2);

--check table 
SELECT * FROM sampleTable;

-- begin transction 
BEGIN TRANSACTION;
	INSERT INTO sampleTable VALUES(3);
	INSERT INTO sampleTable VALUES(4);

--check table 
SELECT * FROM sampleTable;

-- erase the data after Begin Transaction started
-- we will use the ROLLBACK command
ROLLBACK;

----check table again
SELECT * FROM sampleTable;

--using save point in a Transaction
BEGIN TRANSACTION;
	INSERT INTO sampleTable VALUES(3);
	INSERT INTO sampleTable VALUES(4);
SAVE TRANSACTION A;

INSERT INTO sampleTable VALUES(5);
INSERT INTO sampleTable VALUES(6);
SAVE TRANSACTION B;

----check table again
SELECT * FROM sampleTable;

--let's Roll back to Transaction A
ROLLBACK TRANSACTION A;

--check data
SELECT * FROM sampleTable;

--use COMMIT command
-- we can't ROLLBACK or remove data after COMMIT command
COMMIT;

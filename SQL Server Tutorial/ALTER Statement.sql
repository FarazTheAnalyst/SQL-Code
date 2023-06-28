-- ALTER STATEMENT
-- Modifies a table defination by adding, altering, dropping columns and constraints
-- it also reassigns and rebuilds partitions, or disables and enables constraints
-- and triggers
USE EMP_DB;

-- CREATE TABLE
CREATE TABLE emp_details2(
id INT PRIMARY KEY,
name VARCHAR(10));

-- checking table
SELECT * FROM emp_details2;

-- ALTER TABLE emp_details2
ALTER TABLE emp_details2 
ADD SALARY DECIMAL;


-- checking table
SELECT * FROM emp_details2;

-- INSERT VALUES 
INSERT INTO emp_details2 VALUES(1, 'FARAZ', 25000);

-- ALTER TABLE emp_details2
ALTER TABLE emp_details2 ADD phone VARCHAR(20) NULL;

-- checking table
SELECT * FROM emp_details2;

-- ADDING colmn with constraint
ALTER TABLE emp_details2 ADD project_completed INT NOT NULL DEFAULT 5;
-- SECOND  EXAMPLE
ALTER TABLE emp_details2 ADD projectId INT NULL
CONSTRAINT pID_unique_key UNIQUE;

-- Retrieve data from table
SELECT * FROM emp_details2;

-- INSERT DATA
INSERT INTO emp_details2 VALUES(2, 'GILL', 56000, '3949444', DEFAULT, 4);

-- Retrieve data from table
SELECT * FROM emp_details2;

-- adding several columns with constraints
-- create table 
CREATE TABLE company_info(id INT);

-- ALTER TABLE
ALTER TABLE company_info ADD revenue DECIMAL(10,2)	null,
projectId INTEGER CONSTRAINT projId_pk PRIMARY KEY;

-- retrieve data 
SELECT * FROM company_info;
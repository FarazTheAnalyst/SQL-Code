--Unique Index
--a unique index ensures that index key contains no duplicate values
-- there are no differences between creating a UNIQUE CONSTRAINT and creating a
-- UNIQUE INDEX.

--Creating a UNIQUE CONSTRAINT on the column makes the purpose of the index clear

--Implementation
--Primary key
-- when you create a PRIMARY KEY Constraint, a unique clustered index on the column 
-- or columns is automatically created.

--Unique Constraint
-- when you create a UNIQUE Constraint, a UNIQUE nonclustered index is created
-- to enforce a UNIQUE constraint by default

--Index Independent of constraint
-- multiple unique nonclustered indexes can be defined on a Table

--Create table departmentUdx
CREATE TABLE departmentUdx(
did INT PRIMARY KEY,
dname VARCHAR(50),
dloc VARCHAR(50)
);

-- Insert values in a table
INSERT INTO departmentUdx VALUES(2, 'SALES', 'FAISALABAD'),
(1, 'ACCOUNT', 'LAHORE');

-- Check table
SELECT * FROM departmentUdx;

--add  unique nonclustered index on column
ALTER TABLE departmentUdx
ADD CONSTRAINT Uq_department_dname
UNIQUE (dname);

-- Create unique index that is independent of constraint
CREATE UNIQUE NONCLUSTERED INDEX idx_department_dloc
ON departmentUdx(dloc);

--add unique clustered index on column
ALTER TABLE departmentUdx
ADD CONSTRAINT Uq_department_did
UNIQUE CLUSTERED(did);
















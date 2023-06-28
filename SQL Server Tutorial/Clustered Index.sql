--Clustered Index
-- a clustered index determines the physical order of the data in a table.
-- hence, a table can have a only one clustered index
-- when a clustered index is created, the database engine sorts the data in the
-- table based on the defined index key(s) and stores the table in that order

--Things to remember
-- A PRIMARY key constraint creats a clustered index automatically, if 
-- there is no clustered index on the table
-- an index can contain multiple columns. known as composite index
SELECT * FROM employeeTable;

--Create clustered index
CREATE CLUSTERED INDEX idx_employee_name
ON employeeTable(NAME ASC);

--Check table
SELECT * FROM employeeTable;

--drop index
DROP TABLE idx_employee_name;

-- Create composite index
CREATE CLUSTERED INDEX idx_employee_loc
ON employeeTable(ID DESC, LOCATION ASC);

SELECT * FROM employeeTable;
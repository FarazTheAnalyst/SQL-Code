--NonClustered index
-- a nonclustered index doesn't change the physical order of the rows in the table
-- in other (simple) words, a nonclustered index is similar to an index in a 
-- textbook data is stored in one place, the index in another place. the
-- will have pointer to the storage location of the data
-- since the index is stored saperately from the actual data, a table can 
-- have more than one nonclustered index.
SELECT * FROM employeeTable;

--Creat nonclustered index
CREATE NONCLUSTERED INDEX idx_employee_name
ON employeeTable(NAME ASC);

--get data
SELECT * FROM employeeTable
WHERE NAME = 'MIKE';
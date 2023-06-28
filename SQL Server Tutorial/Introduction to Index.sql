--INDEX
-- in general, index is used to measure the performance
-- Database systems uses indices to provide fast access to relational data
-- it is a special type of physical data structure used to access one or more 
-- data rows fast
--NOTE
-- Database index can change each time the corresponding data is changed
-- find employee names or details whose salary is greater than 50000

--Create table
CREATE TABLE employeeTable(
ID INT,
NAME VARCHAR (50),
SALARY DECIMAL,
LOCATION VARCHAR(50)
);

--INSERT data
INSERT INTO employeeTable VALUES
					(1003, 'SMITH', 65000, 'USA'),
					(1001, 'JAMES', 30000, 'PAKISTAN'),
					(1002, 'MIKE', 48000, 'PAKISTAN'),
					(1004, 'JOHN', 55000, 'USA');

-- Check table
SELECT * FROM employeeTable;

--Create index
CREATE INDEX idx_employee_salary
ON employeeTable(SALARY ASC);

SELECT * FROM employeeTable
WHERE SALARY > 50000;

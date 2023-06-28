--View
--a view is a virtual table whose contents are defined by a query
--a view does't not require any storage in a database

-- it is a SAVED QUERY, it acts a filter on the tables referenced in the view query

--The main use case of a view to maintain the security at row and column level
SELECT * FROM employee;

CREATE TABLE employeeTable(
ID INT,
NAME VARCHAR (50),
SALARY DECIMAL,
LOCATION VARCHAR(50),
DEPID INT
);

--INSERT data
INSERT INTO employeeTable VALUES
					(1003, 'SMITH', 65000, 'USA', 2),
					(1001, 'JAMES', 30000, 'PAKISTAN', 1),
					(1002, 'MIKE', 48000, 'PAKISTAN', 1),
					(1004, 'JOHN', 55000, 'USA', 2);

SELECT * FROM employeeTable;
SELECT * FROM departmentUdx;

-- display name and salary
SELECT NAME, SALARY FROM employeeTable;

--display employee details whose departement is sales
SELECT NAME, SALARY, LOCATION, dname
FROM employeeTable e INNER JOIN departmentUdx d
ON e.DEPID = d.did
WHERE d.dname = 'SALES';

--Create view 
CREATE VIEW v_empNameSalary
AS SELECT NAME, SALARY FROM employeeTable;

--Display view
SELECT * FROM v_empNameSalary;

--Create view 
CREATE VIEW v_EmpDetailsWithDeptName
AS
SELECT NAME, SALARY, LOCATION, dname
FROM employeeTable e INNER JOIN  departmentUdx d
ON e.DEPID = d.did
WHERE d.dname = 'SALES';

--Display view
SELECT * FROM v_EmpDetailsWithDeptName;

--maintaning security at column level
--display employee details without salary
SELECT NAME, LOCATION, dname
FROM employeeTable e INNER JOIN departmentUdx d
ON e.DEPID = d.did;

--Create view without salary row level security maintaining
CREATE VIEW v_EmpPublicData
AS
SELECT NAME, LOCATION, dname
FROM employeeTable e INNER JOIN departmentUdx d
ON e.DEPID = d.did;

--Display view
SELECT * FROM v_EmpPublicData;

--display only data for india
SELECT * FROM employeeTable 
WHERE LOCATION = 'PAKISTAN';

-- CREATE view and for pakistan location and maintaining row level security
CREATE VIEW v_EmpWorksForPak
AS
SELECT * FROM employeeTable
WHERE LOCATION = 'PAKISTAN';

--Display view
SELECT * FROM v_EmpWorksForPak;

-- creating view and maintaning row and column level security
SELECT NAME, LOCATION, DEPID, dname
FROM employeeTable e INNER JOIN departmentUdx d
ON e.DEPID = d.did
WHERE LOCATION = 'PAKISTAN';

-- Checking the query code of view
sp_helptext v_EmpWorksForPak;
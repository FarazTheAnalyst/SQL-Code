--CTE(common table expression)
-- cte is temporary named result set

-- a cte must be followed by the single SELECT, INSERT, UPDATE, DELETE,
-- statement that references some of all the cte columns. a CTE can also be specified 
-- in the CREATE VIEW statement as part of the defining  SELECT statement of the view

--multiple CTE query definations can be defined

-- CREATE CTE
WITH cte_avgSalary AS
(
	SELECT AVG(SALARY) AS AvgSalary FROM employeeTable
)

SELECT AvgSalary FROM cte_avgSalary;

-- create CTE
WITH cte_empCount(DEPID, employeeCount)
AS
(
	SELECT DEPID, COUNT(*) AS employeeCount FROM employeeTable
	GROUP BY DEPID
)

SELECT dname, employeeCount FROM 
departmentUdx d JOIN cte_empCount c
ON D.did = c.DEPID;

-- dropping column or columns
-- creat a backup of emp_info
SELECT * INTO EMP_INFO_BKCP FROM EMP_DB.DBO.EMP_INFO;

-- SECOND backup of emp_details2
SELECT * INTO EMP_DETAILS2_BKCP FROM EMP_DB.DBO.emp_details2;

-- RETRIEVE data 
SELECT * FROM EMP_INFO_BKCP;

SELECT * FROM EMP_DETAILS2_BKCP;

--using ALTER statement drop column depId
ALTER TABLE EMP_INFO DROP COLUMN depId;

-- CHECKING table 
SELECT * FROM EMP_INFO;

-- if we want to remove a whoe table we will use a only DROP command not a ALTER
-- STATEMENT
-- THIS WILL THROUGH AN ERROR if we have only two column left ID, and NAME
ALTER TABLE EMP_INFO DROP COLUMN ID, NAME;

--instead we'll use DROP command
DROP TABLE EMP_INFO;

-- ALTER STATEMENT 
-- dropping constraints and columns
ALTER TABLE emp_details2
DROP CONSTRAINT pID_unique_key;

-- CHECK table company_info table
SELECT * FROM company_info;

-- dropping constraints and columns
ALTER TABLE company_info
DROP CONSTRAINT projId_pk,
COLUMN revenue, projectId;

-- CHECK table company_info table
SELECT * FROM company_info;
SELECT * FROM employee;

CREATE TABLE employeelogs(
Id INT, name VARCHAR(255), salary decimal, depId VARCHAR(255),
modifiedby VARCHAR(255), modifiedon date);

-- Check table
SELECT * FROM employeelogs;

--Create trigger
CREATE TRIGGER tr_employee_after_insert
ON employee
AFTER INSERT
AS
	BEGIN
		INSERT INTO employeelogs
		SELECT EMP_ID, EMP_NAME, EMP_SALARY, EMP_DEPID, 'FARAZ', GETDATE()
		FROM inserted;
	END;

-- INSERT VALUES
INSERT INTO employee VALUES(1009, 'ASIF', 60000, 'D2')

-- CREATE Trigger update
CREATE TRIGGER tr_employee_after_update
ON employee
AFTER UPDATE
AS
	BEGIN
		INSERT INTO employeelogs
		SELECT EMP_ID, EMP_NAME, EMP_SALARY, EMP_DEPID, 'FARAZ', GETDATE()
		FROM inserted;
	END;

-- UPDATE VALUE
UPDATE employee 
SET EMP_SALARY = 55000
WHERE EMP_ID = 1007;

--CREATE Trigger
CREATE TRIGGER tr_employee_after_delete
ON employee
AFTER DELETE
AS
	BEGIN
		INSERT INTO employeelogs
		SELECT EMP_ID, EMP_NAME, EMP_SALARY, EMP_DEPID, 'FARAZ', GETDATE()
		FROM deleted;

	END;

--DELETE ROW
DELETE employee
WHERE EMP_NAME = 'ASIF';

-- Check table
SELECT * FROM employeelogs;
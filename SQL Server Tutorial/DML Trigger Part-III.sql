SELECT * FROM employeelogs;
SELECT * FROM employee;

--Create Trigger
CREATE OR ALTER TRIGGER tr_employee_after_allDMLOperation
ON employee
AFTER INSERT, DELETE, UPDATE
AS
	BEGIN
		--INSERT
		IF EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted)
			INSERT INTO employeelogs
			SELECT EMP_ID, EMP_NAME, EMP_SALARY, EMP_DEPID, 'FARAZ', GETDATE()
			FROM deleted

		-- UPDATE
		ELSE IF EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted)
			INSERT INTO employeelogs
			SELECT EMP_ID, EMP_NAME, EMP_SALARY, EMP_DEPID, 'FARAZ', GETDATE()
			FROM inserted


		--DELETE
		ELSE IF EXISTS(SELECT * FROM deleted) AND NOT EXISTS(SELECT * FROM inserted)
			INSERT INTO employeelogs
			SELECT EMP_ID, EMP_NAME, EMP_SALARY, EMP_DEPID, 'FARAZ', GETDATE()
			FROM deleted

		ELSE
			BEGIN
				PRINT 'NOTHING CHANGED...'
				RETURN
			END
				
	END;

-- CHECK TABLE
SELECT * FROM employee;

--INSER VALUES IN a employee table
INSERT INTO employee VALUES(1010, 'OMAR', 30000, 'D3')

-- CHECK TABLE
SELECT * FROM employee;
SELECT * FROM employeelogs;

--UPDATE TABLE
UPDATE employee
SET EMP_SALARY = 20000
WHERE EMP_ID = 1008;

-- CHECK TABLE
SELECT * FROM employee;
SELECT * FROM employee;

-- DELETE 
DELETE FROM employee
WHERE EMP_NAME = 'MIKE';

-- CHECK TABLE
SELECT * FROM employee;
SELECT * FROM employeelogs;



-- WHILE LOOP 
-- while loop statement is a control flow statement that allows you to execute
-- a statement block repeadly as long as specified condition is true
-- the execution of statements in the while loop can be controled from inside the loop
-- with the BREAK and CONTINUE keywords.
SELECT * FROM employee;

BEGIN
	WHILE (SELECT MIN(EMP_SALARY) FROM employee) < 70000
	BEGIN
		UPDATE employee 
		SET EMP_SALARY = EMP_SALARY + 10000;
		PRINT 'Salary updated';

		SELECT * FROM employee;

		IF (SELECT MIN(EMP_SALARY) FROM employee) >= 70000
		PRINT 'Min Salary is greater or equal to 70000';
		BREAK;
	END
END
GO












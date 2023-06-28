-- IF...ELSE
-- IF...ESLSE is a control flow statement that allows you to execute 
-- or skip a statement block based on a specified condition
BEGIN
	DECLARE @salary DECIMAL;
	SELECT @salary = AVG(EMP_SALARY) FROM employee;
	SELECT @salary AS 'AVG.SALARY';

	IF @salary > 25000
		BEGIN 
			PRINT 'AVG salary is greater than 25000'
		END
END
GO

-- IF...ESLSE
BEGIN
	DECLARE @salary DECIMAL;
	SELECT @salary = AVG(EMP_SALARY) FROM employee;
	SELECT @salary AS 'AVG.SALARY';

	IF @salary > 85000
		BEGIN 
			PRINT 'AVG salary is greater than 85000'
		END
	ELSE
		BEGIN
			PRINT 'avg salary is LESS than 85000'
		END
END
GO


--TRY...CATCH
-- try...catch implements error handling for T-SQL
-- it is similiar to exception handling in the object-oriented programming  languages
-- such as c++ java, java script etc.
-- group of T-sql statements can be enclosed in a TRY BLOCK.
-- if the statements between TRY block complete without an error,
-- the statements between CATCH BLOCK WILL NOT EXECUTE HOWEVER'S, If
-- any statements inside the TRY BLOCK causes an exception, the
-- control transfers to the statements in the CATCH BLOCK.

BEGIN TRY
	SELECT 10/5 AS DIVISION;
END TRY
BEGIN CATCH
	SELECT ERROR_MESSAGE() AS 'ERROR MESSAGE';
END CATCH

-- SECOND CODE
BEGIN TRY
	SELECT 10/0 AS Division;
END TRY
BEGIN CATCH
	SELECT ERROR_MESSAGE() AS 'Error Message', ERROR_NUMBER() AS 'ERROR NUMBER',
	ERROR_LINE() AS 'Error line', ERROR_PROCEDURE() AS 'procedure Name', ERROR_STATE()
	AS 'Error State', ERROR_SEVERITY() AS 'Error severity';
END CATCH








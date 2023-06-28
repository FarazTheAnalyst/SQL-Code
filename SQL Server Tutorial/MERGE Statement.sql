--Merge 
-- merge is a logical combination of insert and update
-- it combines the sequence of conditional INSERT, UPDATE, and 
-- DELETE statements in a single statements

--using Merge statement, you can sync two different tables so that the content
-- of the target table is modified based on differences found in the source table

-- why merge 
-- it is used to maintain history of data in data warehousing
-- during the ETL(Extract, Transform, Load) cycle.

--Scenario
-- suppose, tables needs to be refreshed periodically with new data
-- arriving from online transction processing (OLTP) systems. This
-- this new data may contain changes in existing rows in tables and/or new
-- or new rows need to be inserted.

--Actions / conditions
-- 1.rows in the source table are not found in the target table. then,
-- rows from the source will be added to the target table

-- 2. rows in the target table are not found in the source table.then,
-- delete rows from the target table.

-- 3. rows in the source and target table have the same keys, but they have different
-- values in the non key columns. then, update the rows in the target table 
-- with data from the source table
CREATE DATABASE airlines;

--CREATE Table
CREATE TABLE flightPassengers(
flightId INT IDENTITY PRIMARY KEY,
firstName VARCHAR(20) NOT NULL,
flightCode VARCHAR(20) NOT NULL,
flightDate DATE NOT NULL,
seat VARCHAR(5)
);

-- INSERT Values
INSERT INTO flightPassengers(firstName, flightCode, flightDate, seat)
VALUES('SMITH', 'SQL2022', GETDATE(), '7F'),
	('ADAM', 'SQL2022', GETDATE(), '20A'),
	('MIKE', 'SQL2022', GETDATE(), '4B');

--CREATE Table
CREATE TABLE checkIn(
firstName VARCHAR(20) NOT NULL,
flightCode VARCHAR(20) NOT NULL,
flightDate DATE NOT NULL,
seat VARCHAR(5)
);


-- INSERT Values
INSERT INTO checkIn(firstName, flightCode, flightDate, seat)
VALUES('SMITH', 'SQL2022', GETDATE(), '7F'),
	('ADAM', 'SQL2022', GETDATE(), '2B'),
	('MIKE', 'SQL2022', GETDATE(), '17A');

-- Check Table
SELECT * FROM flightPassengers;
SELECT * FROM checkIn;

-- Merge tables
Merge flightPassengers F
USING checkIn C
ON C.firstName = F.firstName
AND C.flightCode = F.flightCode
AND C.flightDate = F.flightDate

WHEN MATCHED
	THEN UPDATE SET F.seat = C.seat
WHEN NOT MATCHED BY TARGET
	THEN INSERT (firstName, flightCode, flightDate, seat)
	VALUES (firstName, flightCode, flightDate, seat)
WHEN NOT MATCHED BY SOURCE
	THEN DELETE;

-- Check Table
SELECT * FROM flightPassengers;
SELECT * FROM checkIn;

-- Altering column definition
use EMP_DB;

-- create table
CREATE TABLE CUSTOMER(
ACCNO INT, CUST_NAME CHAR(100));

-- changing customer table data type
ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME VARCHAR(100);

-- changing a size of table
-- if column contain data, the column size can only be in increased
-- ALTER the size of the column
ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME VARCHAR(50);

-- retrieve data from customer 
SELECT * FROM CUSTOMER;

-- INSERT DATA
INSERT INTO CUSTOMER VALUES(12345, 'FARAZ GILL');

-- retrieve data from customer 
SELECT * FROM CUSTOMER;

-- Try to decrease column size
-- this will through error because now we have data in a table column
ALTER TABLE CUSTOMER  ALTER COLUMN CUST_NAME VARCHAR(9);

-- Now we will increae the column size TO 
ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME VARCHAR(10);

-- retrieve data from customer 
SELECT * FROM CUSTOMER;

-- CHANGING THE DATA TYPE AND SIZE AT THE SAME TIME
ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME CHAR(50);
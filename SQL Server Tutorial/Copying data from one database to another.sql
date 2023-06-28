USE EMP_DB;
-- create a copy of a table from different database
-- create database
CREATE DATABASE EMP_DB;

-- CREATE TABLE
CREATE TABLE EMP_INFO(
ID INT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
DEPID VARCHAR(50));

INSERT INTO EMP_INFO VALUES(1, 'STEVE', '10'),
(2, 'JOHN', '20'),
(3, 'MIKE', '20'),
(4, 'WARD', '30'),
(5, 'FARAZ', '');

-- checking data from EMP_INFO TABLE
SELECT * FROM EMP_INFO;

-- CREATE DATABASE
CREATE DATABASE SAMPLE_EMP_DB;

--COPYING DATA from one database table to another
SELECT * INTO EMP_DETAILS FROM EMP_DB.DBO.EMP_INFO;

-- CHECKING EMP_DETAILS TABLE
SELECT * FROM EMP_DETAILS;









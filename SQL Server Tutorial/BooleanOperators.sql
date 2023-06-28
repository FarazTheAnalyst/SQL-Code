-- create table tbl_user_login
CREATE TABLE tbl_user_login(
user_id INT PRIMARY KEY IDENTITY,
username VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
password VARCHAR(50) NOT NULL
);

-- INSERTING data
INSERT INTO tbl_user_login(username, email, password) VALUES(
'ironman', 'tony@stark.com', 'tony123'),
('captain', 'steve@captain.com', 'steve456'),
('spidy', 'peter@parker.com', 'peter123'),
('wonder', 'wonder@womam.com', 'wonder123');

-- retrieving data from tbl_user_login
SELECT * FROM tbl_user_login;

-- in AND operator if both conditions are true then it will return the value
SELECT username FROM tbl_user_login
	WHERE email = 'steve@captain.com' AND password = 'steve456';

-- in OR operator if one condition is true it will return the results
SELECT password FROM tbl_user_login
	WHERE username = 'spidy' OR email = 'peter@peter.com';

-- NOT operator remove the value that you don't want
SELECT * FROM tbl_user_login
	WHERE NOT username = 'wonder';

-- second method
SELECT * FROM tbl_user_login
	WHERE username != 'wonder';
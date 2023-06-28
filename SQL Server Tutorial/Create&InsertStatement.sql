-- create employee_info table
CREATE TABLE employee_info(
empId INTEGER PRIMARY KEY,
empName VARCHAR(20) NOT NULL,
empSalary VARCHAR(20) NOT NULL,
job VARCHAR(20),
phone VARCHAR(30),
depId INTEGER NOT NULL
);

-- inserting data in a employee_info table
INSERT INTO employee_info VALUES(1, 'MIKE', 45000, 'DESIGNER', '7777777', 10),
(2, 'ADAM', 25000, 'DEVELOPER', '95759399', 20),
(4, 'STEVE', 12000, 'TESTER', '835829945', 10),
(5, 'JAMES', 68000, 'CE0', '31828123', 20),
(6, 'BRIAN', 32000, 'ACCOUNTANT', '83625742', 20);

-- retrieve all data from employee_info table to check it
SELECT * FROM employee_info;

UPDATE employee_info
SET depId = 30
WHERE empId = 5;
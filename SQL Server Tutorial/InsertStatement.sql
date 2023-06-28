-- insert values in a tables
INSERT INTO employee_info VALUES(
1, 'ADAM', 25000, 'Jr. Developer', '94589399', 10);

--insert values in a selected tables columns
INSERT INTO dbo.employee_info(empId, empName, empSalary) VALUES(
2, 'Smith', 38000);


--update employe_info table add 1000 to each salary
update employee_info 
SET empSalary = empSalary + 1000;

-- update employee_info table where empName equal to 'Smith'  set job equal to Tester
update employee_info
SET job = 'Tester'
WHERE empName = 'Smith';

--update employee_info table phone where empName smith
update employee_info
SET phone = '9573858'
WHERE empName = 'Smith';

--update employee_info table depID where empName smith
UPDATE employee_info
SET depID = 20
WHERE empName = 'Smith';

SELECT * FROM employee_info;




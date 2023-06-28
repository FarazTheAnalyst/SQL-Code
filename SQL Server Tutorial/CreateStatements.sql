CREATE DATABASE employee_DB;

USE employee_DB;

-- create table employee_info

CREATE TABLE employee_info(
empId INTEGER PRIMARY KEY,
empName VARCHAR(20) NOT NULL,
empSalary DECIMAL(10,2) NOT NULL,
job VARCHAR(50),
phone VARCHAR(50) ,
depId INTEGER 
);



-- create table department_info

CREATE TABLE department_info(
deptid INTEGER NOT NULL,
deptName VARCHAR(20) NOT NULL,
depLocation VARCHAR(50)
);

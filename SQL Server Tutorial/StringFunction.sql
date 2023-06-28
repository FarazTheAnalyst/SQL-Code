-- length function return a length of a character 
SELECT LEN('FARAZ GILL');

-- return a empName column characters length
SELECT empName, LEN(empName) AS legnth_of_names FROM employee_info;

-- upper function return strings into a upper characters
SELECT UPPER('my name is Faraz gill');

-- lower function return strings into a lower characters
SELECT empName, LOWER(empName) AS Lower_names FROM employee_info;

-- LTRIM function remove spaces from left side
-- RTRIM function remove spaces from right side
SELECT LTRIM('   COOL'), RTRIM('COOL   ');

-- SUBSTRING function returns a part of the string
SELECT SUBSTRING('ALHAMDULILLAH',8,13);

-- REPLACE FUNCTION replace the existing string with another one
SELECT REPLACE('ALLAHGOOD','GOOD', 'GREAT');

-- REPLICATE function returns string as many time you want it
SELECT REPLICATE('MOHAMMAD(PBUH) ', 5);
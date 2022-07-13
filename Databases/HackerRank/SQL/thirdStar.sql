/*Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates*/
SELECT DISTINCT CITY FROM STATION WHERE NOT LEFT(CITY, 1) IN('A', 'E', 'I', 'O', 'U') OR NOT RIGHT(CITY, 1) IN('A', 'E', 'I', 'O', 'U')

/*Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION WHERE NOT LEFT(CITY, 1) IN('A', 'E', 'I', 'O', 'U') AND NOT RIGHT(CITY, 1) IN('A', 'E', 'I', 'O', 'U')

/*Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID*/
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3), ID ASC;

/*Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order*/
SELECT Employee.name FROM Employee ORDER BY name;

/*Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.*/
select name from employee where employee.salary > 2000 and employee.months < 10

/*Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN*/
SELECT SUM(CITY.POPULATION) FROM CITY WHERE CITY.COUNTRYCODE = 'JPN'

/*Query the difference between the maximum and minimum populations in CITY*/
SELECT MAX(CITY.POPULATION) - MIN(CITY.POPULATION) FROM CITY

/*Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.*/
SELECT CEIL(AVG(EMPLOYEES.SALARY) - AVG(REPLACE(EMPLOYEES.SALARY, '0',''))) FROM EMPLOYEES

/*We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers.*/
SELECT MONTHS*SALARY AS earnings, COUNT(*) FROM employee GROUP BY earnings ORDER BY earnings DESC LIMIT 1;

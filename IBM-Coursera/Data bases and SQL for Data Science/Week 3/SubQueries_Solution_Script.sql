select * from EMPLOYEES where salary < avg(salary);
select EMP_ID, F_NAME, L_NAME, SALARY 
from EMPLOYEES
where SALARY < (select AVG(SALARY) 
                from EMPLOYEES); 

select EMP_ID, SALARY, MAX(SALARY) AS MAXSALARY 
from EMPLOYEES;

select EMP_ID, SALARY, (select MAX(SALARY) FROM EMPLOYEES) AS MAXSALARY 
from EMPLOYEES;

select * from (SELECT EMP_ID, F_NAME, L_NAME, DEP_ID from EMPLOYEES)
AS EMP4ALL;

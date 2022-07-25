/*
Write an SQL query to find the employees who earn more than their managers.
Return the result table in any order.
The query result format is in the following example.
*/

# Write your MySQL query statement below
select E.name as "Employee"
from Employee E
join Employee M
on E.managerid = M.id
and E.salary > M.salary;

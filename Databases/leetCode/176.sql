/*
Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.
The query result format is in the following example.
*/

# Write your MySQL query statement below
select(
    select distinct salary
    from Employee
    order by salary desc
    limit 1 offset 1
)as SecondHighestSalary

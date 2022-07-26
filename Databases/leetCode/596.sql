/*
Write an SQL query to report all the classes that have at least five students.
Return the result table in any order.
*/

# Write your MySQL query statement below
select class from Courses
group by class
having count(distinct student) >= 5;

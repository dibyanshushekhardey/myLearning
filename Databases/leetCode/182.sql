/*
Write an SQL query to report all the duplicate emails.
Return the result table in any order.
The query result format is in the following example.
*/

# Write your MySQL query statement below
select email from Person
group by email 
having count(*) > 1;

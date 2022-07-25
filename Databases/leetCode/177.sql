/*
Write an SQL query to report the nth highest salary from the Employee table. If there is no nth highest salary, the query should report null.
The query result format is in the following example.
*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC
      LIMIT 1 OFFSET N
      
  );
END

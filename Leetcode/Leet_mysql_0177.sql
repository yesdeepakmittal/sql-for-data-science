-- https://leetcode.com/problems/nth-highest-salary/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N - 1;
  RETURN (
      # Write your MySQL query statement below.
SELECT DISTINCT Salary from Employee ORDER BY Salary DESC LIMIT 1 OFFSET N
  );
END
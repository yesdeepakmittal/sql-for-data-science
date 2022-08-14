-- https://leetcode.com/problems/nth-highest-salary/submissions/

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
SET @N = @N - 1
    RETURN (
        /* Write your T-SQL query statement below. */
        
        SELECT  DISTINCT Salary from Employee ORDER BY Salary DESC OFFSET @N ROWS 
FETCH NEXT 1 ROWS ONLY
    )
END
-- https://leetcode.com/problems/swap-salary/

/* Write your T-SQL query statement below */

UPDATE Salary
SET sex = 
CASE 
WHEN sex = 'f' THEN 'm' 
WHEN sex = 'm' THEN 'f'
END

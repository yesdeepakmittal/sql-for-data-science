/* Write your T-SQL query statement below */
-- https://leetcode.com/problems/not-boring-movies/


SELECT * FROM Cinema
WHERE id % 2 <> 0 AND description <> 'boring'
ORDER BY rating DESC
-- https://leetcode.com/problems/triangle-judgement/

SELECT *, 
CASE WHEN x + y > z AND y + z > x AND z + x > y THEN 'Yes' ELSE 'No' END AS triangle
FROM Triangle
-- https://leetcode.com/problems/biggest-single-number/

SELECT max(num) AS num 
FROM (SELECT num FROM my_numbers GROUP BY num HAVING COUNT(num) = 1) AS kuch_bhi
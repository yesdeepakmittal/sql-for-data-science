-- https://leetcode.com/problems/big-countries/submissions/

/* Write your T-SQL query statement below */

select name, population , area from world where area>=3000000 or population>=25000000;

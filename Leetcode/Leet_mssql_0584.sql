/* Write your T-SQL query statement below */

-- https://leetcode.com/problems/find-customer-referee/

SELECT name FROM Customer WHERE referee_id <> 2 OR referee_id is null
/* Write your T-SQL query statement below */

-- https://leetcode.com/problems/find-followers-count/

SELECT user_id, COUNT(follower_id) as "followers_count" FROM Followers GROUP BY user_id
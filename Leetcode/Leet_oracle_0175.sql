/* Write your PL/SQL query statement below */

--https://leetcode.com/problems/combine-two-tables/submissions/

select p.firstName, p.lastName , a.city, a.state from Person p left join Address a on p.personId=a.personId; 

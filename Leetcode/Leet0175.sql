-- https://leetcode.com/problems/combine-two-tables/ - MS SQL SERVER

/* Write your T-SQL query statement below */
select firstName,lastname,city,state from Person left join address on Person.personId = Address.personId
-- https://leetcode.com/problems/second-highest-salary/

/* Write your T-SQL query statement below */

select max(salary) SecondHighestSalary from employee where salary < (select max(salary) from employee)
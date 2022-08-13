/* Write your PL/SQL query statement below */
-- https://leetcode.com/problems/customers-who-never-order/
select name as Customers from Customers where id not in (select customerId from Orders);

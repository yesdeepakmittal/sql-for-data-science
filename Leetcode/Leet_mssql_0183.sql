/* Write your T-SQL query statement below 
-- https://leetcode.com/problems/customers-who-never-order/

SELECT name AS "Customers" from Customers LEFT JOIN Orders ON
Customers.id = Orders.customerId where customerId is null
*/

 SELECT name AS "Customers" FROM Customers WHERE id NOT IN (SELECT customerId from Orders)
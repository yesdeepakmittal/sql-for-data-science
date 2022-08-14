/* Write your T-SQL query statement below */

-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

SELECT TOP(1) Customer_number FROM Orders
GROUP BY Customer_number
ORDER BY COUNT(order_number) DESC
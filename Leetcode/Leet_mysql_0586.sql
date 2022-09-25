/*
link - https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

After GROUP BY, the data records will be ORDER BY based upon the COUNT(records for every GROUP)
*/


SELECT customer_number FROM Orders GROUP BY customer_number ORDER BY count(order_number) DESC limit 1
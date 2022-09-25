-- https://leetcode.com/problems/duplicate-emails/

/* 
- HAVING is used for Agg. fn because we can not use GROUP BY here
- It is necessary to have categorical var either in agg. fn after SELECT or in GROUP BY 
*/

select Email from person group by email Having count(email) > 1
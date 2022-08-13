-- https://leetcode.com/problems/employees-with-missing-information/

/* Write your T-SQL query statement below */

-- Finding employee_id from first table
SELECT employee_id
FROM Employees
WHERE employee_id
NOT IN
(SELECT employee_id 
FROM Employees

INTERSECT

SELECT employee_id 
FROM Salaries)


-- Finding employee_id from second table & take UNION of the result

UNION

SELECT employee_id
FROM Salaries 

WHERE employee_id
NOT IN
(SELECT employee_id 
FROM Employees

INTERSECT

SELECT employee_id 
FROM Salaries)


-- Ordering the result based upon employee_id

ORDER BY employee_id


-- Another approach
/*
SELECT employee_id 
FROM Employees
WHERE employee_id
NOT IN
(SELECT employee_id from Salaries)

UNION

SELECT employee_id
FROM Salaries
WHERE employee_id
NOT IN
(SELECT employee_id FROM Employees)

ORDER BY employee_id
*/
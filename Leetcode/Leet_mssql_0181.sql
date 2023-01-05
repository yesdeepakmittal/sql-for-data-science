-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

-- CREATE TABLE Employee(
-- id INT,
-- name VARCHAR,
-- salary INT,
-- managerId INT 
-- )

-- ALTER TABLE employee ALTER COLUMN
-- name NVARCHAR(1000)

-- INSERT INTO EMPLOYEE VALUES (1,'Joe', 70000, 3),(2,'Henry',80000,4),(3,'Sam',60000,NULL),(4,'Max',90000,Null)

-- SELECT * FROM employee

SELECT E1.name AS Employee FROM Employee E1 LEFT JOIN Employee E2 ON E1.managerId = E2.Id WHERE E1.salary > E2.salary
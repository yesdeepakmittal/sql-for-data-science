-- https://leetcode.com/problems/shortest-distance-in-a-line/

/*
- Since Every row is unique, no duplicates possible. So distance can NEVER be 0. 
- Hence we should filter the records which are common in both tables after join.
*/

CREATE TABLE Point(
 x int
);

insert into Point values(-1),(0),(2);

SELECT MIN(ABS(pnt1.x - pnt2.x)) as shortest 
FROM Point pnt1 CROSS JOIN Point pnt2
WHERE pnt1.x <> pnt2.x;





-- If data is sorted, we can reduce the number of resultant records
select * from Point pnt1 INNER JOIN Point pnt2;

/* 
Output
x	x
-1	-1
 0	-1
 2	-1
-1	 0
 0	 0
 2	 0
-1	 2
 0	 2
 2	 2
*/

SELECT * from Point pnt1 INNER JOIN Point pnt2 
WHERE pnt1.x < pnt2.x;

/* 
Output
x	x
-1	0
-1	2
 0	2
*/

SELECT MIN(ABS(pnt1.x - pnt2.x)) as shortest 
from Point pnt1 INNER JOIN Point pnt2 
WHERE pnt1.x < pnt2.x;

-- Reference Example - https://github.com/yesdeepakmittal/sql-for-data-science/blob/main/other-sql-queries-schemas/cross-join.sql
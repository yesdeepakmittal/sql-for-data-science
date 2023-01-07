-- MySQL solution

CREATE TABLE Point(
 x int
);

insert into Point values(-1),(0),(2);
select * from Point p1 CROSS JOIN Point p2;

/*
 x	 x
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

CREATE TABLE Point2(
    x int,
    y int
)

INSERT INTO Point2 VALUES(1,2),(3,4),(4,5);
select * from Point2 p1 CROSS JOIN Point2 p2;

/*
x	y	x	y
1	2	1	2
3	4	1	2
4	5	1	2
1	2	3	4
3	4	3	4
4	5	3	4
1	2	4	5
3	4	4	5
4	5	4	5
*/
-- https://leetcode.com/problems/consecutive-available-seats/

SELECT temp.seat_id
FROM 
    (SELECT *, LEAD(free) OVER(ORDER BY seat_id) as ForwardSeat, LAG(free) OVER(ORDER BY seat_id) as BackwardSeat
     FROM Cinema) as temp
WHERE temp.free = 1 AND temp.ForwardSeat = 1 OR temp.free = 1 AND temp.BackwardSeat = 1
ORDER BY temp.seat_id
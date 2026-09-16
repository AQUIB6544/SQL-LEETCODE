# Write your MySQL query statement below
SELECT a.machine_id,
       ROUND(AVG(a1.timestamp - a.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity a1
    ON a.machine_id    = a1.machine_id
   AND a.process_id    = a1.process_id
   AND a.activity_type = 'start'
   AND a1.activity_type = 'end'
GROUP BY a.machine_id;
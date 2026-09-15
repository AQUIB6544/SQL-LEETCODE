# Write your MySQL query statement below
SELECT id
FROM
(SELECT id, temperature, recordDate,
LAG(temperature) OVER(ORDER BY recordDate) AS previous_temperature,
LAG(recordDate) OVER(ORDER BY recordDate) AS  previous_recordDate
FROM Weather) t
WHERE DATEDIFF(recordDate, previous_recordDate) = 1 AND temperature > previous_temperature
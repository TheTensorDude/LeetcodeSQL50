SELECT  w2.id
FROM Weather AS w1
JOIN Weather AS w2
ON DATE_ADD(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate
WHERE w1.temperature < w2.temperature;
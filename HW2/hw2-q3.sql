SELECT F.day_of_week_id as day_of_week, AVG(F.arrival_delay) as delay
FROM FLIGHTS AS F
GROUP BY F.day_of_week_id
ORDER BY delay DESC
LIMIT 1;

-- 1 row
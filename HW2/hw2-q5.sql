SELECT C.name,
COUNT(CASE WHEN F.canceled=1 THEN 1 END) * 100.0 / COUNT(ALL) as percentage
FROM FLIGHTS AS F
JOIN CARRIERS AS C ON F.carrier_id = C.cid
WHERE F.origin_city = 'Seattle WA'
GROUP BY C.name
HAVING (COUNT(CASE WHEN F.canceled=1 THEN 1 END) * 1.0 / COUNT(ALL)) > 0.005
ORDER BY percentage;
-- 6 rows
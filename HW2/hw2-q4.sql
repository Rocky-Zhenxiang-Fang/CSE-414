SELECT distinct C.name as name
FROM FLIGHTS AS F
JOIN CARRIERS AS C ON F.carrier_id = C.cid
GROUP BY F.day_of_month, F.month_id, C.name
HAVING COUNT(ALL) > 1000

-- 12 Rows
SELECT SUM(F.capacity) AS capacity
FROM FLIGHTS AS F
JOIN MONTHS AS M ON F.month_id = M.mid and M.month = 'July'
WHERE ((F.origin_city = 'Seattle WA' and F.dest_city = 'San Francisco CA') 
OR (F.origin_city = 'San Francisco CA' and F.dest_city = 'Seattle WA')) 
AND F.day_of_month = 10; 

-- 1 row
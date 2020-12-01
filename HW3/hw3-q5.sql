SELECT DISTINCT F0.dest_city as city
FROM [dbo].[FLIGHTS] AS F0
WHERE F0.origin_city != 'Seattle WA'  -- direct flight
    AND F0.dest_city NOT IN (
        SELECT DISTINCT F2.dest_city as city 
        FROM [dbo].[FLIGHTS] AS F1
        JOIN [dbo].[FLIGHTS] AS F2 ON F1.dest_city = F2.origin_city
        WHERE F1.origin_city = 'Seattle WA' ) -- one step flight
ORDER BY F0.dest_city;

-- 15 seconds
-- 3 rows


-- city
-- Devils Lake ND
-- Hattiesburg/Laurel MS
-- St. Augustine FL



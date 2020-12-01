SELECT DISTINCT F2.dest_city as city 
FROM [dbo].[FLIGHTS] AS F1
JOIN [dbo].[FLIGHTS] AS F2 ON F1.dest_city = F2.origin_city
WHERE F1.origin_city = 'Seattle WA' AND F2.dest_city != 'Seattle WA' 
    AND F2.dest_city NOT IN (SELECT DISTINCT F.dest_city AS city
    from [dbo].[FLIGHTS] as F
    where F.origin_city = 'Seattle WA')
ORDER BY F2.dest_city;


-- 256 rows
-- 10 seconds

-- city
-- Aberdeen SD
-- Abilene TX
-- Adak Island AK
-- Aguadilla PR
-- Akron OH
-- Albany GA
-- Albany NY
-- Alexandria LA
-- Allentown/Bethlehem/Easton PA
-- Alpena MI
-- Amarillo TX
-- Appleton WI
-- Arcata/Eureka CA
-- Asheville NC
-- Ashland WV
-- Aspen CO
-- Atlantic City NJ
-- Augusta GA
-- Bakersfield CA
-- Bangor ME


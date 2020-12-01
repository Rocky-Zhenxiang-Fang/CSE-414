SELECT DISTINCT C.name as carrier
FROM [dbo].[CARRIERS] AS C
JOIN [dbo].[FLIGHTS] AS F ON F.carrier_id = C.cid
WHERE F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA'
ORDER BY C.name;


-- 4 rows
-- 1 seconds

--carrier
-- Alaska Airlines Inc.
-- SkyWest Airlines Inc.
-- United Air Lines Inc.
-- Virgin America

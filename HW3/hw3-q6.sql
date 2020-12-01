SELECT DISTINCT C.name as carrier
FROM [dbo].[CARRIERS] AS C
WHERE C.cid in (
    SELECT F.carrier_id
    FROM [dbo].[FLIGHTS] AS F
    WHERE F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA'
    )
ORDER BY C.name;


-- 4 rows
-- 2 seconds

-- carrier
-- Alaska Airlines Inc.
-- SkyWest Airlines Inc.
-- United Air Lines Inc.
-- Virgin America



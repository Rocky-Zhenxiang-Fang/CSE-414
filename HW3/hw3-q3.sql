SELECT F.origin_city AS origin_city, ROUND(SUM(CASE WHEN F.actual_time < 3*60 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS percentage
FROM [dbo].[FLIGHTS] AS F
WHERE F.canceled = 0
GROUP BY F.origin_city
ORDER BY percentage, F.origin_city;


--327 rows
-- 3 seconds

-- origin_city,			percentage
-- Guam TT,				0.000000000000
-- Pago Pago TT,		0.000000000000
-- Aguadilla PR,		28.900000000000
-- Anchorage AK,		31.810000000000
-- San Juan PR,			33.660000000000
-- Charlotte Amalie VI,	39.560000000000
-- Ponce PR,			40.980000000000
-- Fairbanks AK,		50.120000000000
-- Kahului HI,			53.510000000000
-- Honolulu HI,			54.740000000000
-- San Francisco CA,	55.830000000000
-- Los Angeles CA,		56.080000000000
-- Seattle WA,			57.610000000000
-- Long Beach CA,		62.180000000000
-- New York NY,			62.370000000000
-- Kona HI,				63.160000000000
-- Las Vegas NV,		64.920000000000
-- Christiansted VI,	65.100000000000
-- Newark NJ,			65.850000000000
-- Plattsburgh NY,		66.670000000000
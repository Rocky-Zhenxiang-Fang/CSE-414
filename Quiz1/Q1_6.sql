WITH MinEventTime AS (
	SELECT E.id AS Eid, E.name AS Ename, E.mid AS Emid, Min(P.time) AS minTime
	FROM Event AS E
	JOIN Performance AS P on P.eid = E.id
	GROUP BY E.id, E.name, E.mid, P.won
	HAVING P.won = 1
)
SELECT M.name, M.year, MT.Ename, MT.minTime
FROM Meet AS M
JOIN MinEventTime AS MT ON MT.Emid = M.id
JOIN Performance AS P2 ON P2.eid = MT.eid
WHERE P2.time = MT.minTime;

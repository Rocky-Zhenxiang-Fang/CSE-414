SELECT E.id, E.name
FROM Event AS E
JOIN Performance AS P ON P.eid = E.id
GROUP BY E.id, E.name, P.won
HAVING P.won = 1 AND COUNT(*) > 1; 
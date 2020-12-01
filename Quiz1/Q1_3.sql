SELECT C.name as Name
FROM Contestant as C
JOIN Team as T on C.tid = T.id
WHERE T.name = "Track" AND T.organization = "University of Washington"
ORDER BY C.name ASC; 
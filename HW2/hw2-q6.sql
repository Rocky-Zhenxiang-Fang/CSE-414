SELECT C.name as carrier, MAX(F.price) as max_price
FROM FLIGHTs AS F
JOIN CARRIERS AS C ON F.carrier_id = C.cid
WHERE (F.origin_city = 'Seattle WA' and F.dest_city = 'New York NY') 
or (F.origin_city = 'New York NY' and F.dest_city = 'Seattle WA')
GROUP BY C.name;

-- 3 rows
SELECT C.name, 
f1.flight_num as ​f1_flight_num, f1.origin_city as f1_origin_city,
f1.dest_city as f1_dest_city, f1.actual_time as f1_actual_time,
f2.flight_num as ​f2_flight_num, f2.origin_city as f2_origin_city,
f2.dest_city as f2_dest_city, f2.actual_time as f2_actual_time,
f1.actual_time  + f2.actual_time as actual_time
FROM FLIGHTS AS f1, FLIGHTS AS f2
JOIN MONTHS AS M ON f1.month_id = M.mid and f2.month_id = M.mid and M.month = 'July'
JOIN CARRIERS AS C ON f1.carrier_id = C.cid and f2.carrier_id = C.cid
WHERE f1.origin_city = 'Seattle WA' and f2.dest_city = 'Boston MA'
and f1.dest_city = f2.origin_city 
and f1.day_of_month = 15 and f2.day_of_month = 15
and f1.actual_time + f2.actual_time < 7 * 60;

--1472 Rows
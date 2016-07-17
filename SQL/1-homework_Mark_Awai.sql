-- 1.
-- Honolulu International is the furthest away, based on destination distance.
-- It is 4983 miles away from JFK in New York.

SELECT origin,dest, distance
FROM flights_db.flights
ORDER BY distance DESC;

-- When I ran this query, I found Newark EWR to George Bush International was the same distance.
SELECT origin, dest, max(distance)
FROM flights_db.flights;

-- 2.
-- The planes have 1, 2,3 or 4 engines.
SELECT DISTINCT engines
From flights_db.planes
ORDER BY seats DESC;


-- The Boeing 747-451 Fixed wing, multi engine plane  has 450 seats.
SELECT manufacturer, type, model, seats
FROM flights_db.planes
ORDER BY seats DESC
LIMIT 10;
--

-- 3. There were 336,776 total flights in 2013.
SELECT COUNT(*)
AS Num_of_Flights
FROM flights_db.flights;

-- 4.


 SELECT carrier, COUNT( carrier) AS Num_of_flights
 FROM flights_db.flights
 GROUP BY carrier;

-- 5.
SELECT carrier, COUNT( carrier) AS Num_of_flights
FROM flights_db.flights
GROUP BY carrier
ORDER BY Num_of_flights DESC;

-- 6.
SELECT carrier, COUNT( carrier) AS Num_of_flights
FROM flights_db.flights
GROUP BY carrier
ORDER BY Num_of_flights DESC LIMIT 5;

-- 7.
SELECT carrier, COUNT(carrier) AS Num_of_flights
FROM flights_db.flights
WHERE distance > 1000
GROUP BY carrier
ORDER BY Num_of_flights;

-- 8.
-- What is was the average delay time for United Airlines at JFK?
SELECT avg(dep_delay) FROM flights_db.flights
WHERE carrier='UA'
AND origin ='JFK';
-- Returned 7.9

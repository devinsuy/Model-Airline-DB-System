-------- QUERIES --------

-- The list of all airlines for a given airport:
SELECT al.name, ap.FAA_ABBREVIATION FROM Airlines al
    INNER JOIN AirlineAirports aa ON al.AIRLINEID = aa.AIRLINEID
    INNER JOIN Airports ap ON aa.AIRPORTID = ap.AIRPORTID
WHERE ap.FAA_ABBREVIATION = 'LAX'; -- Replace LAX with any airport

-----------------------------------------------------------------------------------

---- The list of all flights for a given airline ----

-- Sorted by starting location:
SELECT al."NAME" AS Airline_name, flight_number, departure_time, 
arrival_time, ap.LOCATION AS Starting_Location, destination
FROM Flights f
    INNER JOIN Airlines al ON f.AIRLINEID = al.AIRLINEID
    INNER JOIN AirlineAirports aa ON al.AIRLINEID = aa.AIRLINEID
    INNER JOIN Airports ap ON aa.AIRPORTID = ap.AIRPORTID
WHERE al."NAME" = 'Allegiant Air'
ORDER BY ap.LOCATION;

-- Sorted by destination:
SELECT al."NAME" AS Airline_name, flight_number, departure_time, 
arrival_time, ap.LOCATION AS Starting_Location, destination
FROM Flights f
    INNER JOIN Airlines al ON f.AIRLINEID = al.AIRLINEID
    INNER JOIN AirlineAirports aa ON al.AIRLINEID = aa.AIRLINEID
    INNER JOIN Airports ap ON aa.AIRPORTID = ap.AIRPORTID
WHERE al."NAME" = 'Allegiant Air'
ORDER BY destination;

-- Sorted by longest flight:
SELECT al."NAME" AS Airline_name, flight_number, departure_time, 
arrival_time, ap.LOCATION AS Starting_Location, destination, 
{fn timestampdiff(SQL_TSI_MINUTE, departure_time, arrival_time)} AS Flight_Length_Minutes
FROM Flights f
    INNER JOIN Airlines al ON f.AIRLINEID = al.AIRLINEID
    INNER JOIN AirlineAirports aa ON al.AIRLINEID = aa.AIRLINEID
    INNER JOIN Airports ap ON aa.AIRPORTID = ap.AIRPORTID
WHERE al."NAME" = 'Allegiant Air'
ORDER BY Flight_Length_Minutes DESC;

-- Sorted by shortest flight:
SELECT al."NAME" AS Airline_name, flight_number, departure_time, 
arrival_time, ap.LOCATION AS Starting_Location, destination, 
{fn timestampdiff(SQL_TSI_MINUTE, departure_time, arrival_time)} AS Flight_Length_Minutes
FROM Flights f
    INNER JOIN Airlines al ON f.AIRLINEID = al.AIRLINEID
    INNER JOIN AirlineAirports aa ON al.AIRLINEID = aa.AIRLINEID
    INNER JOIN Airports ap ON aa.AIRPORTID = ap.AIRPORTID
WHERE al."NAME" = 'Allegiant Air'
ORDER BY Flight_Length_Minutes ASC;

-----------------------------------------------------------------------------------













-- https://www.hackerrank.com/challenges/weather-observation-station-2/

SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2) FROM STATION

-- https://www.hackerrank.com/challenges/weather-observation-station-13

SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N>38.7880 AND 137.2345>LAT_N

-- https://www.hackerrank.com/challenges/weather-observation-station-14

SELECT ROUND(MAX(LAT_N),4) FROM STATION WHERE 137.2345>LAT_N
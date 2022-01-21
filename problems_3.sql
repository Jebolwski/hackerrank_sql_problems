-- https://www.hackerrank.com/challenges/weather-observation-station-2/

SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2) FROM STATION

-- https://www.hackerrank.com/challenges/weather-observation-station-13

SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N>38.7880 AND 137.2345>LAT_N

-- https://www.hackerrank.com/challenges/weather-observation-station-14

SELECT ROUND(MAX(LAT_N),4) FROM STATION WHERE 137.2345>LAT_N

-- https://www.hackerrank.com/challenges/weather-observation-station-15/

SELECT ROUND(LONG_W,4) FROM STATION WHERE 137.2345>LAT_N ORDER BY LAT_N DESC LIMIT 1;

-- https://www.hackerrank.com/challenges/weather-observation-station-16/

SELECT ROUND(MIN(LAT_N),4) FROM STATION WHERE LAT_N>38.7780

-- https://www.hackerrank.com/challenges/weather-observation-station-17

SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N>38.7780 ORDER BY LAT_N LIMIT 1

-- https://www.hackerrank.com/challenges/weather-observation-station-18

SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+ABS(MIN(LONG_W)-MAX(LONG_W)),4) FROM STATION

-- https://www.hackerrank.com/challenges/weather-observation-station-19

SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+ POWER(MAX(LONG_W) - MIN(LONG_W), 2)), 4) FROM STATION

-- https://www.hackerrank.com/challenges/weather-observation-station-20

SELECT ROUND(MEDIAN(LAT_N),4) FROM STATION

-- https://www.hackerrank.com/challenges/asian-population

SELECT SUM(City.Population) FROM City INNER JOIN Country ON City.CountryCode = Country.Code Where Country.Continent = 'Asia';

-- https://www.hackerrank.com/challenges/african-cities/

select City.Name FROM CITY INNER JOIN COUNTRY ON CITY.CountryCode=COUNTRY.Code WHERE country.CONTINENT='Africa';

-- https://www.hackerrank.com/challenges/average-population-of-each-continent/

SELECT Country.Continent, FLOOR(AVG(City.Population))
FROM Country, City 
WHERE Country.Code = City.CountryCode 
GROUP BY Country.Continent ;

-- https://www.hackerrank.com/challenges/interviews

SELECT X, Y FROM FUNCTIONS F1
    WHERE EXISTS(SELECT * FROM FUNCTIONS F2 WHERE F2.Y = F1.X
    AND F2.X = F1.Y AND F2.X > F1.X) AND (X != Y)
UNION
SELECT X,Y FROM FUNCTIONS F1 WHERE X = Y AND 
    ((SELECT COUNT(*) FROM FUNCTIONS WHERE X = F1.X AND Y = F1.X) > 1)
      ORDER BY X;
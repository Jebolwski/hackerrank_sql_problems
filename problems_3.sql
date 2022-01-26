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

--! := -> ASSIGNMENT
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/


set @number = 21;
select repeat('* ', @number := @number - 1) from information_schema.tables;

--https://www.hackerrank.com/challenges/draw-the-triangle-2

set @number=0;
select repeat('* ',@number:=@number+1) from information_schema.tables where @number<20;

https://www.hackerrank.com/challenges/harry-potter-and-wands

SELECT W.ID, WP.AGE, W.COINS_NEEDED, W.POWER 
FROM WANDS AS W
JOIN WANDS_PROPERTY AS WP
ON (W.CODE = WP.CODE) 
WHERE WP.IS_EVIL = 0 AND W.COINS_NEEDED = 
(SELECT MIN(COINS_NEEDED) FROM WANDS AS X JOIN WANDS_PROPERTY AS Y ON (X.CODE = Y.CODE) 
WHERE X.POWER = W.POWER AND Y.AGE = WP.AGE) 
ORDER BY W.POWER DESC, WP.AGE DESC;

-- https://www.hackerrank.com/challenges/full-score

SELECT H.HACKER_ID, H.NAME
FROM HACKERS H
INNER JOIN SUBMISSIONS S
ON H.HACKER_ID = S.HACKER_ID
INNER JOIN CHALLENGES C
ON S.CHALLENGE_ID = C.CHALLENGE_ID
INNER JOIN DIFFICULTY D
ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
WHERE S.SCORE = D.SCORE AND C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(S.HACKER_ID) > 1
ORDER BY COUNT(S.HACKER_ID) DESC, S.HACKER_ID ASC;

-- https://www.hackerrank.com/challenges/contest-leaderboard

select h.hacker_id,h.name,sum(sscore)
from Hackers h inner join (select s.hacker_id,max(score) as sscore from Submissions s group by s.hacker_id,s.challenge_id) st on h.hacker_id=st.hacker_id
group by h.hacker_id,h.name
having sum(sscore)>0
order by sum(sscore) desc,h.hacker_id asc;
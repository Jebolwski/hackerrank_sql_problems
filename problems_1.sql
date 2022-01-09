
-- https://www.hackerrank.com/challenges/weather-observation-station-11

select distinct city from station where (city not like "a%" and city not like "e%" and city not like "i%" and
 city not like "o%" and city not like "u%") or (city not like "%a" and city not like "%e" and city not like "%i" 
 and city not like "%o" and city not like "%u")


--  https://www.hackerrank.com/challenges/weather-observation-station-12

select distinct city from station where (city not like "a%" and city not like "e%" and city not like "i%" and
 city not like "o%" and city not like "u%") and (city not like "%a" and city not like "%e" and city not like "%i" 
 and city not like "%o" and city not like "%u")


-- https://www.hackerrank.com/challenges/more-than-75-marks

 SELECT NAME FROM STUDENTS WHERE MARKS>75 ORDER BY RIGHT(NAME,3),ID

-- https://www.hackerrank.com/challenges/name-of-employees

 SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC

-- https://www.hackerrank.com/challenges/salary-of-employees/

 SELECT NAME FROM EMPLOYEE WHERE SALARY>2000 AND MONTHS<10
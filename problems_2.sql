-- https://www.hackerrank.com/challenges/what-type-of-triangle

SELECT CASE WHEN A+B<=C OR A+C<=B OR C+B<=A THEN "Not A Triangle"
            WHEN A=B AND A=C THEN "Equilateral"
            WHEN A<>B AND B<>C AND A<>C THEN "Scalene"
            ELSE "Isosceles"
            END
            FROM TRIANGLES;


-- https://www.hackerrank.com/challenges/the-pads

select CONCAT(name,"(",LEFT(OCCUPATION,1),")") from occupations ORDER BY NAME

select CONCAT("There are a total of ",COUNT(OCCUPATION)," ",LOWER(OCCUPATION),"s.") 
from occupations group by occupation order by count(occupation),occupation

-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function

SELECT COUNT(NAME) FROM CITY WHERE POPULATION>100000  

-- https://www.hackerrank.com/challenges/revising-aggregations-sum

SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT="CALIFORNIA"


-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function

SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT="California"

-- https://www.hackerrank.com/challenges/average-population

select round(avg(population)) from city

-- https://www.hackerrank.com/challenges/what-type-of-triangle

select case when A+B<=C or A+C<=C or B+C<=A then "Not A Triangle"
       when A=B and B=C then "Equilateral"
       when A<>B and B<>C and A<>C then "Scalene"
       else "Isosceles"
       end
       from triangles;

-- https://www.hackerrank.com/challenges/earnings-of-employees

SELECT MONTHS*SALARY,COUNT(*) FROM EMPLOYEE GROUP BY MONTHS*SALARY DESC LIMIT 1;

-- https://www.hackerrank.com/challenges/japan-population

select sum(population) from city where COUNTRYCODE="JPN"

-- https://www.hackerrank.com/challenges/population-density-difference

select max(population)-min(population) from city
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
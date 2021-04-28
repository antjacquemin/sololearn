-- 1 Type of Triangle
SELECT CASE
        #WHEN A + B < C OR A + C < B OR B + C < A THEN "Not A Triangle"
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN "Not A Triangle"
        WHEN A = B AND A = C THEN "Equilateral"
        WHEN A = B OR B = C OR A = C THEN "Isosceles"
        ELSE "Scalene"
    END
FROM TRIANGLES;

-- 2 The PADS
SELECT CONCAT(Name, "(", LEFT(Occupation, 1) ,")") FROM OCCUPATIONS ORDER BY NAME;
SELECT "There are a total of", COUNT(Occupation) AS total, CONCAT(LOWER(Occupation), "s.") FROM OCCUPATIONS GROUP BY Occupation ORDER BY total;

-- 3 Occupations

-- 4 Binary Tree Nodes

-- 5 New Companies

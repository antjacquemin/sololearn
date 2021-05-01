-- 1 Type of Triangle
SELECT 
    CASE
      #WHEN A + B < C OR A + C < B OR B + C < A THEN "Not A Triangle"
      WHEN A + B <= C OR A + C <= B OR B + C <= A THEN "Not A Triangle"
      WHEN A = B AND A = C THEN "Equilateral"
      WHEN A = B OR B = C OR A = C THEN "Isosceles"
      ELSE "Scalene"
    END
  FROM TRIANGLES;

-- 2 The PADS
SELECT CONCAT(Name, "(", LEFT(Occupation, 1) ,")") FROM OCCUPATIONS ORDER BY NAME;
SELECT "There are a total of", COUNT(Occupation) AS total, CONCAT(LOWER(Occupation), "s.") 
  FROM OCCUPATIONS GROUP BY Occupation ORDER BY total;

-- 3 Occupations
SET @nbDoctors=0, @nbProfessors=0, @nbSingers=0, @nbActors=0;
SELECT MIN(doctorName), MIN(professorName), MIN(singerName), MIN(actorName) FROM 
  (
    SELECT
        CASE 
          WHEN Occupation='Doctor' THEN (@nbDoctors := @nbDoctors+1)
          WHEN Occupation='Professor' THEN (@nbProfessors := @nbProfessors+1)
          WHEN Occupation='Singer' THEN (@nbSingers := @nbSingers+1)
          WHEN Occupation='Actor' THEN (@nbActors := @nbActors+1) 
        END AS RowNumber,
        CASE WHEN Occupation='Doctor' THEN Name END AS doctorName,
        CASE WHEN Occupation='Professor' THEN Name END AS professorName,
        CASE WHEN Occupation='Singer' THEN Name END AS singerName,
        CASE WHEN Occupation='Actor' THEN Name END AS actorName
      FROM OCCUPATIONS
      ORDER BY Name
  ) t
  GROUP BY RowNumber;

-- 4 Binary Tree Nodes
SELECT N, 
    CASE
      WHEN P IS NULL THEN "Root"
      WHEN EXISTS(SELECT P FROM BST WHERE BParent.N = P) THEN "Inner"
      ELSE "Leaf"
    END
  FROM BST AS BParent ORDER BY N;

-- 5 New Companies
SELECT DISTINCT c.company_code, founder, COUNT(DISTINCT lead_manager_code), COUNT(DISTINCT senior_manager_code), COUNT(DISTINCT manager_code), COUNT(DISTINCT employee_code) 
  FROM Company c
  JOIN Employee e ON c.company_code = e.company_code
  GROUP BY c.company_code, founder
  ORDER BY c.company_code;

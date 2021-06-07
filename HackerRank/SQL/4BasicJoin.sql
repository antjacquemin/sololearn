-- 1 Population Census 
SELECT SUM(CITY.POPULATION) FROM CITY 
    JOIN COUNTRY ON COUNTRYCODE = CODE
    WHERE CONTINENT = "Asia";

-- 2 African Cities
SELECT CITY.NAME FROM CITY 
    JOIN COUNTRY ON COUNTRYCODE = CODE
    WHERE CONTINENT = "Africa";

-- 3 Average Population of Each Continent
SELECT CONTINENT, FLOOR(AVG(CITY.POPULATION)) FROM CITY 
    JOIN COUNTRY ON COUNTRYCODE = CODE
    GROUP BY CONTINENT;

-- 4 The Report
SELECT IF(Grade > 7, Name, NULL) Name, Grade, Marks FROM Students
    JOIN Grades ON Marks BETWEEN Min_Mark AND Max_Mark
    ORDER BY Grade DESC, Name;

-- 5 Top Competitors
SELECT h.hacker_id, name FROM Hackers h
    JOIN Submissions s ON h.hacker_id = s.hacker_id
    JOIN Challenges c ON s.challenge_id = c.challenge_id
    JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
    WHERE s.score = d.score
    GROUP BY h.hacker_id, name
    HAVING COUNT(h.hacker_id) > 1
    ORDER BY COUNT(h.hacker_id) DESC, h.hacker_id

-- 6 Ollivander's Inventory
SELECT id, age, coins_needed, power FROM Wands w
    JOIN Wands_Property wp ON wp.code = w.code
    WHERE NOT is_evil AND coins_needed = (
        SELECT MIN(coins_needed) FROM Wands wmin
            JOIN Wands_Property wpmin ON wpmin.code = wmin.code
            WHERE NOT wpmin.is_evil AND wpmin.age = wp.age AND wmin.power = w.power
    )    
    ORDER BY power DESC, age DESC;

-- 7 Challenges

-- 8 Contest Leaderboard

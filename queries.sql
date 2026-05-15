SELECT * FROM match_results;
SELECT 
SUBSTR(Result, 1, INSTR(Result, ' won') - 1) AS Winner,
COUNT(*) AS Wins
FROM match_results
GROUP BY Winner
ORDER BY Wins DESC;


SELECT 
CASE 
    WHEN Result LIKE '%wickets%' THEN 'Chasing'
    WHEN Result LIKE '%runs%' THEN 'Defending'
    ELSE 'Other'
END AS Win_Type,
COUNT(*) AS Matches
FROM match_results
GROUP BY Win_Type;


SELECT 
Venue,
COUNT(*) AS Matches_Played
FROM match_results
GROUP BY Venue
ORDER BY Matches_Played DESC;


SELECT PLAYER, RUNS, AVG, SR
FROM top_run_scorer
ORDER BY RUNS DESC;

SELECT PLAYER, WKTS, AVG
FROM top_bowler
ORDER BY WKTS DESC;

SELECT 
r.PLAYER,
r.RUNS,
b.WKTS
FROM top_run_scorer r
JOIN top_bowler b
ON r.PLAYER = b.PLAYER
ORDER BY r.RUNS DESC;

SELECT Team, Wins, Points
FROM points_table
ORDER BY Points DESC;

SELECT BATTER, Sixes
FROM most_sixes
ORDER BY Sixes DESC;




https://www.hackerrank.com/challenges/contest-leaderboard/problem


/* The maximum scores for all chanlleges by a hacker */

SELECT 
  hacker_id, max(score) AS score
FROM 
  Submissions 
GROUP BY 
  hacker_id, challenge_id; 
  
  
  
  
  
  
SELECT 
  Hackers.hacker_id, 
  Hackers.name, 
  SUM(A.score) as total_score
FROM Hackers
LEFT JOIN 
 (
  SELECT 
     hacker_id, max(score) AS score
  FROM 
     Submissions 
  GROUP BY hacker_id, challenge_id
 ) A
ON Hackers.hacker_id = A.hacker_id
GROUP BY Hackers.hacker_id, Hackers.name
HAVING total_score > 0
ORDER BY total_score DESC, Hackers.hacker_id ASC; 

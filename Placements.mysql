https://www.hackerrank.com/challenges/placements/problem


/* ID, Name & Salary Table including Friends */

SELECT
  a.ID AS ID, a.Name AS Name, c.Salary AS Salary, 
  b.Friend_ID AS Friend_ID, d.Name AS Friend_Name, e.Salary AS Friends_Salary
FROM 
  Students a
LEFT JOIN Friends b ON a.ID = b.ID
LEFT JOIN Packages c ON a.ID = c.ID
LEFT JOIN Students d ON d.ID = b.Friend_ID
LEFT JOIN Packages e ON e.ID = b.Friend_ID
ORDER BY 1 ASC
; 




/* Friend's Salary is hihgers, Ordered by Salry Amount */
SELECT
  f.Name
FROM 
(
  SELECT
  a.ID AS ID, a.Name AS Name, c.Salary AS Salary, 
  b.Friend_ID AS Friend_ID, d.Name AS Friend_Name, e.Salary AS Friends_Salary
FROM 
  Students a
LEFT JOIN Friends b ON a.ID = b.ID
LEFT JOIN Packages c ON a.ID = c.ID
LEFT JOIN Students d ON d.ID = b.Friend_ID
LEFT JOIN Packages e ON e.ID = b.Friend_ID
WHERE e.Salary > c.Salary
ORDER BY e.Salary ASC
) f; 

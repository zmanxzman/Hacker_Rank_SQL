https://www.hackerrank.com/challenges/the-pads/problem

/* Name + Occupations Initial */ 
SELECT
 Name,
 CASE WHEN Occupation = 'Doctor' THEN '(D)'
      WHEN Occupation = 'Actor' THEN '(A)'
      WHEN Occupation = 'Singer' THEN '(S)'
      WHEN Occupation = 'Professor' THEN '(P)'
      END AS ID
FROM OCCUPATIONS
ORDER BY 1 ASC; 

SELECT 
 CONCAT(NAME, ID)
FROM
(
SELECT
 Name,
 CASE WHEN Occupation = 'Doctor' THEN '(D)'
      WHEN Occupation = 'Actor' THEN '(A)'
      WHEN Occupation = 'Singer' THEN '(S)'
      WHEN Occupation = 'Professor' THEN '(P)'
      END AS ID
FROM OCCUPATIONS
ORDER BY 1 ASC
) A; 


/* Final */

SELECT 
 CONCAT(NAME, ID)
FROM
(
SELECT
 Name,
 CASE WHEN Occupation = 'Doctor' THEN '(D)'
      WHEN Occupation = 'Actor' THEN '(A)'
      WHEN Occupation = 'Singer' THEN '(S)'
      WHEN Occupation = 'Professor' THEN '(P)'
      END AS ID
FROM OCCUPATIONS
ORDER BY 1 ASC
) A; 

SELECT CONCAT("There are a total of ",COUNT(Occupation),' ',LOWER(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;

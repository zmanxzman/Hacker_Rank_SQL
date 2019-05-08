https://www.hackerrank.com/challenges/symmetric-pairs/problem


/* CASE 1: Two points are not identical, OR (x, y) where x != y */
SELECT 
  f1.x, f1.y
FROM 
  Functions AS f1, Functions AS f2
WHERE 
  f1.x = f2.y AND f1.y = f2.x AND f1.x < f1.y;
  
  
  
/* CASE 2: Two points are identical, OR (x,x) */
SELECT 
  f1.x, f1.y
FROM 
  Functions AS f1, Functions AS f2
WHERE 
  f1.x = f2.y AND f1.y = f2.x AND f1.x = f1.y
GROUP BY 
  f1.x, f1.y
HAVING 
  COUNT(f1.x) > 1;



(
SELECT 
  f1.x, f1.y
FROM 
  Functions AS f1, Functions AS f2
WHERE 
  f1.x = f2.y AND f1.y = f2.x AND f1.x < f1.y
)
UNION
(
SELECT 
  f1.x, f1.y
FROM 
  Functions AS f1, Functions AS f2
WHERE 
  f1.x = f2.y AND f1.y = f2.x AND f1.x = f1.y
GROUP BY 
  f1.x, f1.y
HAVING 
  COUNT(f1.x) > 1
)
ORDER BY 1 ASC; 

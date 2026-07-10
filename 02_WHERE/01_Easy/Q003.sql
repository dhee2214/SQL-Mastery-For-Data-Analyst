/*Find the movies not released in the years between 2000 and 2010*/

SELECT Title
FROM Movies
WHERE  YEAR NOT BETWEEN 2000 AND 2010;

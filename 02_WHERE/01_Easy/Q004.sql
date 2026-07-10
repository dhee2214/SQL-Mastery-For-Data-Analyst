/*Find the first 5 Pixar movies and their release year*/

SELECT Title,Year
FROM Movies
WHERE Year BETWEEN 1995 AND 2003;

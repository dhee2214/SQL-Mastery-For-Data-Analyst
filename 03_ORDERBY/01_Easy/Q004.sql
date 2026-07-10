/*List the next five Pixar movies sorted alphabetically*/

SELECT Title
FROM Movies
ORDER BY Title ASC
LIMIT 5 OFFSET 5;

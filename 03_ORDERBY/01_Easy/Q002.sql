/*List the last four Pixar movies released (ordered from most recent to least)*/

SELECT Title
FROM Movies
ORDER BY Year  DESC
LIMIT 4;

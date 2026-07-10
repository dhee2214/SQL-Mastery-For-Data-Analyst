/*Find all the movies (and director) not directed by John Lasseter*/

SELECT Title,Director
FROM Movies
WHERE Director NOT LIKE 'John Lasseter';

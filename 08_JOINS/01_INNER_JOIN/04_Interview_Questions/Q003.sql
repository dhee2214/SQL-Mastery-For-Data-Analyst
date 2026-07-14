/*Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT
    CO.Continent,
    FLOOR(AVG(C.Population))
FROM City AS C
INNER JOIN Country AS CO 
    ON C.CountryCode = CO.Code
GROUP BY
    CO.Continent;
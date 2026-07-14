--- HACKER RANK--

/* Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT
    C.Name
FROM City AS C
INNER JOIN Country AS Co
    ON C.CountryCode = Co.Code
WHERE Co.Continent = 'Africa';
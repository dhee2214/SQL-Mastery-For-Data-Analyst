
--- HACKER RANK QN--

/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT
    SUM(C.Population) AS TotalPopulation
FROM City AS C
INNER JOIN Country AS Co
    ON C.CountryCode = Co.Code
WHERE Co.Continent = 'Asia';
SHOW DATABASES;

USE world;

SHOW TABLES;

SELECT * FROM city;

SELECT * FROM country;

SELECT * FROM countrylanguage;

SELECT city.Name 
FROM city
union
SELECT country.Name 
FROM country
ORDER BY Name ASC;

SELECT * FROM city
ORDER BY CountryCode;
SELECT * from country
ORDER BY Name;

SELECT country.Name as CountryName, city.Name as CityName 
FROM country
INNER JOIN city
ON city.CountryCode=country.Code
ORDER BY CountryName;
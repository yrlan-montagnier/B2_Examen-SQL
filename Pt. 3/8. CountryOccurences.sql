SELECT Country, FROM "Employee"
UNION
SELECT ShipCountry FROM "Order"
UNION
SELECT Country FROM "Customer"

SELECT Country, COUNT(Country) AS Occurences FROM "Employee"
UNION
SELECT Country, COUNT(Country) AS Occurences FROM "Customer"
UNION
SELECT ShipCountry, COUNT(ShipCountry) AS Occurences FROM "Order"

SELECT DISTINCT Country, COUNT(Country) AS Occurences FROM "Employee" GROUP BY Country
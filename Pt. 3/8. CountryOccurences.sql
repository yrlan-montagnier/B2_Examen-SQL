SELECT DISTINCT Country, COUNT(Country) AS Occurences FROM "Employee" GROUP BY "Country"
UNION ALL
SELECT DISTINCT Country, COUNT(Country) AS Occurences FROM "Customer" GROUP BY "Country"
UNION ALL
SELECT DISTINCT ShipCountry, COUNT(ShipCountry) AS Occurences FROM "Order" GROUP BY "ShipCountry"

SELECT Country, AllCountry FROM (
SELECT Country, COUNT(Country) AS AllCountry FROM "Employee"
UNION ALL
SELECT Country, COUNT(Country) AS AllCountry FROM "Customer"
UNION ALL
SELECT ShipCountry, COUNT(ShipCountry) AS AllCountry FROM "Order"
)
GROUP BY AllCountry
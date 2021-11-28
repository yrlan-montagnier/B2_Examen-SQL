SELECT CompanyName, COUNT(CompanyName) AS NbCommandes, ShipCountry
FROM "Order"
INNER JOIN Customer ON Customer.Id = "Order".CustomerId
WHERE "ShipCountry" = 'Brazil'
GROUP BY "CompanyName"
ORDER BY COUNT(CompanyName) DESC
LIMIT 1
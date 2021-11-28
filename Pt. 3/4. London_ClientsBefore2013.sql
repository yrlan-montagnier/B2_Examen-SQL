SELECT CompanyName, ShipCity, ShippedDate
FROM "Order"
INNER JOIN Customer ON Customer.Id = "Order".CustomerId
WHERE ShipCity = 'London' AND ShippedDate < '2013'
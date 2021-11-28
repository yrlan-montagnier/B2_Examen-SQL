SELECT CompanyName, OrderId, SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalPrice
FROM "Customer"
INNER JOIN "Order" ON "Customer".Id = "Order".CustomerId
INNER JOIN "OrderDetail" ON "Order".Id = "OrderDetail".OrderId
WHERE OrderId = '10260'
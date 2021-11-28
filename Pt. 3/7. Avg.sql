SELECT OrderId, SUM(UnitPrice * Quantity * (1 - Discount)) AS OrderPrice
FROM "OrderDetail"
GROUP BY OrderId
HAVING OrderPrice < 587.374960324826
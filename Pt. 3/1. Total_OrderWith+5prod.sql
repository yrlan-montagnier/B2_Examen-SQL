SELECT OrderId, SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalPrice, COUNT(OrderId) AS NbProduits
FROM OrderDetail
GROUP BY OrderId
HAVING NbProduits > 5
SELECT FirstName || " " || UPPER(LastName) AS EmployeeName, COUNT(EmployeeId) AS NbCommandes
FROM "Employee"
INNER JOIN "Order" ON "Order"."EmployeeId" = "Employee"."Id"
GROUP BY EmployeeName

SELECT FirstName || " " || UPPER(LastName) AS EmployeeName, COUNT(EmployeeId) AS NbCommandes, SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalPrice
FROM "Employee"
INNER JOIN "Order" ON "Order"."EmployeeId" = "Employee"."Id"
INNER JOIN "OrderDetail" ON "OrderDetail"."OrderId" = "Order"."Id"
GROUP BY EmployeeName
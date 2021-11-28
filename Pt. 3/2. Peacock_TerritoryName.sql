SELECT TerritoryDescription, EmployeeId
FROM Territory
INNER JOIN EmployeeTerritory ON EmployeeTerritory.TerritoryId = Territory.Id
WHERE "EmployeeId" = 4
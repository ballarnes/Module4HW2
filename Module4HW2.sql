SELECT *
FROM Sales.Customer

GO

SELECT *
FROM Sales.Store
ORDER BY Name

GO

SELECT TOP 10 *
FROM HumanResources.Employee
WHERE BirthDate > '1989-09-28'

GO

SELECT NationalIDNumber, LoginID, JobTitle
FROM HumanResources.Employee
WHERE LoginID LIKE '%0'
ORDER BY JobTitle DESC

GO

SELECT *
FROM Person.Person
WHERE (DATEPART(yy, ModifiedDate) = 2008)
AND MiddleName IS NOT NULL
AND Title IS NULL

GO

SELECT DISTINCT Department.Name
FROM HumanResources.EmployeeDepartmentHistory, HumanResources.Department
WHERE Department.DepartmentID != 0

GO

SELECT TerritoryID, SUM(CommissionPct) AS SUM_CommissionPct
FROM Sales.SalesPerson
WHERE CommissionPct > 0
GROUP BY TerritoryID

GO 

SELECT *
FROM HumanResources.Employee
WHERE VacationHours =
(
SELECT MAX(VacationHours)
FROM HumanResources.Employee
)

GO

SELECT *
FROM HumanResources.Employee
WHERE JobTitle
IN ('Sales Representative', 'Network Administrator', 'Network Manager')

GO

SELECT *
FROM HumanResources.Employee AS employee
LEFT JOIN Purchasing.PurchaseOrderHeader AS purchase
ON employee.BusinessEntityID = purchase.EmployeeID
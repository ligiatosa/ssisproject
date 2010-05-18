SELECT SH.OrderDate, SD.LineTotal, P.ProductLine
FROM Sales.SalesOrderHeader SH
INNER JOIN Sales.SalesOrderDetail SD
ON SH.SalesOrderID = SD.SalesOrderID
INNER JOIN Production.Product P
ON SD.ProductID = P.ProductID
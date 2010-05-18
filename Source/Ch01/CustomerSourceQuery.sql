select convert(nvarchar(15),SC.
AccountNumber) as CustomerAlternateKey,
C.Title, C.FirstName, C.MiddleName,
C.LastName, C.Suffix, C.EmailAddress,
C.AddressLine1, C.AddressLine2,
D.BirthDate, D.MaritalStatus,
D.YearlyIncome, D.DateFirstPurchase,
D.Gender, D.TotalChildren,
D.NumberChildrenAtHome, D.Education,
D.Occupation, D.HomeOwnerFlag,
D.NumberCarsOwned
from Sales.vIndividualCustomer C
inner join Sales.Customer SC
on C.BusinessEntityID = SC.PersonID
inner join Sales.vPersonDemographics D
on C.BusinessEntityID =
D.BusinessEntityID
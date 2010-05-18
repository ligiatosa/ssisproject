USE [AdventureWorks2008]
GO
TRUNCATE TABLE dbo.Sales_Summary
GO
ALTER TABLE dbo.Sales_Summary WITH CHECK
ADD CONSTRAINT [CK_Summary_ProductLine]
CHECK ((upper([ProductLine])='R' OR upper([ProductLine])='M'
OR upper([ProductLine])='T'))
GO

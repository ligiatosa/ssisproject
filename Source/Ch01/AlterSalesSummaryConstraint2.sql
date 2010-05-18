USE [AdventureWorks2008]
GO
ALTER TABLE dbo.Sales_Summary
DROP CONSTRAINT [CK_Summary_ProductLine]
GO
ALTER TABLE dbo.Sales_Summary WITH CHECK
ADD CONSTRAINT [CK_Summary_ProductLine]
CHECK ((upper([ProductLine])='R' OR upper([ProductLine])='M'
OR upper([ProductLine])='T' OR upper([ProductLine])='S'))
GO

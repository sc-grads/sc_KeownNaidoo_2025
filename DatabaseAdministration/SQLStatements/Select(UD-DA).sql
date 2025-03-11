 USE [AdventureWorks2022]
 GO

 SELECT * FROM [Person].[Address]

 SELECT [AddressID],[AddressLine1],[ModifiedDate] FROM [Person].[Address]

 USE [AdventureWorks2022]
GO

SELECT [AddressID]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[City]
      ,[StateProvinceID]
      ,[PostalCode]
      ,[SpatialLocation]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [Person].[Address]

GO


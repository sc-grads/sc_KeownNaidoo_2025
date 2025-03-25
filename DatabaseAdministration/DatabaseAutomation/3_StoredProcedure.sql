USE [AutoTest]
GO
-- Create insert procedure
CREATE PROCEDURE sp_InsertUser
    @Name NVARCHAR(50),
    @Surname NVARCHAR(50),
    @Email NVARCHAR(100)
AS
BEGIN
    INSERT INTO [user] (FirstName, Surname, Email)
    VALUES (@Name, @Surname, @Email);
    
END
GO
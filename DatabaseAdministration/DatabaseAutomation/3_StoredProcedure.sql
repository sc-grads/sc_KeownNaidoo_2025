USE [AutoTest]
GO
CREATE PROCEDURE sp_InsertUser
    @FirstName NVARCHAR(50),  -- Changed to match column
    @Surname NVARCHAR(50),
    @Email NVARCHAR(100)
AS
BEGIN
    INSERT INTO [user] (FirstName, Surname, Email)
    VALUES (@FirstName, @Surname, @Email);  -- Parameters match columns
END
GO
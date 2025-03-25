-- Create insert procedure
CREATE PROCEDURE sp_InsertUser
    @Name NVARCHAR(50),
    @Surname NVARCHAR(50),
    @Email NVARCHAR(100)
AS
BEGIN
    INSERT INTO [user] (Name, Surname, Email)
    VALUES (@Name, @Surname, @Email);
    
    -- Return the new ID
    SELECT SCOPE_IDENTITY() AS NewUserID;
END
GO
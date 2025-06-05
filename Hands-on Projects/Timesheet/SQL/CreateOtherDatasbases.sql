CREATE TABLE [dbo].[Client] (
    [ClientID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [ClientName] NVARCHAR(100) NULL,
    )
GO
CREATE TABLE [dbo].[Employee] (
    [ID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [EmployeeName] NVARCHAR(100) NULL,
)
GO

CREATE TABLE [dbo].[Leave] (
    [LeaveID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[EmployeeName] NVARCHAR(100) NULL,
    [TypeOfLeave] NVARCHAR(50) NULL,
    [StartDate] DATE NULL,
    [EndDate] DATE NULL,
    [NumberOfDays] INT NULL,
    [ApprovalObtained] NVARCHAR(50) NULL,
    [SickNote] NVARCHAR(50) NULL
);

ALTER TABLE [dbo].[Client]
ADD CONSTRAINT UC_Client_ClientName UNIQUE ([ClientID], [ClientName]);

ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT UC_Employee_EmployeeName UNIQUE ([ID], [EmployeeName]);


CREATE TABLE ErrorLog (
    ErrorID INT PRIMARY KEY IDENTITY(1,1),
    FilePath VARCHAR(255),
    ErrorDescription TEXT,
    Timestamp DATETIME DEFAULT GETDATE()
);

CREATE TABLE [dbo].[AuditLog] (
    [AuditID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [PackageID] NVARCHAR(50) NULL,
	[PackageName] NVARCHAR(50) NULL,
    [ExecutionStartTime] DATETIME NULL,
    [MachineName] NVARCHAR(100) NULL,
    [TaskName] NVARCHAR(100) NULL,
    [UserName] NVARCHAR(100) NULL,
	[FilePath] TEXT NULL,
    [Timestamp] DATETIME DEFAULT GETDATE()
);

drop table AuditLog

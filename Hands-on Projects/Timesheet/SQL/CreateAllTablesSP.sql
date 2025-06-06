
USE [TimesheetDB]
GO

CREATE PROCEDURE CreateAllTables
AS
BEGIN
    SET NOCOUNT ON;

    -- Drop existing tables if they exist
    IF OBJECT_ID('dbo.Timesheet', 'U') IS NOT NULL DROP TABLE dbo.Timesheet;
    IF OBJECT_ID('dbo.Client', 'U') IS NOT NULL DROP TABLE dbo.Client;
    IF OBJECT_ID('dbo.Employee', 'U') IS NOT NULL DROP TABLE dbo.Employee;
    IF OBJECT_ID('dbo.Leave', 'U') IS NOT NULL DROP TABLE dbo.Leave;
    IF OBJECT_ID('dbo.ErrorLog', 'U') IS NOT NULL DROP TABLE dbo.ErrorLog;
    IF OBJECT_ID('dbo.AuditLog', 'U') IS NOT NULL DROP TABLE dbo.AuditLog;

    -- Create Timesheet table
    CREATE TABLE [dbo].[Timesheet] (
        [TimeSheetID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [EmployeeName] NVARCHAR(100) NULL,
        [Date] DATE NULL,
        [DayOfWeek] NVARCHAR(255) NULL,
        [Client] NVARCHAR(255) NULL,
        [ClientProjectName] NVARCHAR(100) NULL,
        [Description] TEXT NULL,
        [BillableOrNonBillable] NVARCHAR(20) NULL,
        [Comments] TEXT NULL,
        [TotalHours] INT NULL,
        [StartTime] NVARCHAR(7) NULL,
        [EndTime] NVARCHAR(7) NULL,
        CONSTRAINT UQ_Timesheet_UniqueEntry UNIQUE ([EmployeeName], [Date], [StartTime], [EndTime])
    );

    -- Create Client table
    CREATE TABLE [dbo].[Client] (
        [ClientID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [ClientName] NVARCHAR(100) NULL
    );

    -- Create Employee table
    CREATE TABLE [dbo].[Employee] (
        [ID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [EmployeeName] NVARCHAR(100) NULL,
        CONSTRAINT UC_Employee_EmployeeName UNIQUE ([ID], [EmployeeName])
    );

    -- Create Leave table
    CREATE TABLE [dbo].[Leave] (
        [LeaveID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [EmployeeName] NVARCHAR(100) NULL,
        [TypeOfLeave] NVARCHAR(50) NULL,
        [StartDate] DATE NULL,
        [EndDate] DATE NULL,
        [NumberOfDays] INT NULL,
        [ApprovalObtained] NVARCHAR(50) NULL,
        [SickNote] NVARCHAR(50) NULL,
        CONSTRAINT UC_Leave UNIQUE ([EmployeeName], [TypeOfLeave], [StartDate], [EndDate])
    );

    -- Create ErrorLog table
    CREATE TABLE ErrorLog (
        ErrorID INT PRIMARY KEY IDENTITY(1,1),
        FilePath NVARCHAR(255),
        ErrorDescription TEXT,
        Timestamp DATETIME DEFAULT GETDATE()
    );

    -- Create AuditLog table
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
END;
GO

EXEC CreateAllTables;
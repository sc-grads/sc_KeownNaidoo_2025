CREATE TABLE [dbo].[Timesheet] (
    [TimeSheetID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [EmployeeName] NVARCHAR(100) NULL,
    [Date] DATE NULL,
    [DayOfWeek] VARCHAR(255) NULL,
    [Client] VARCHAR(255) NULL,
    [ClientProjectName] VARCHAR(100) NULL,
    [Description] TEXT NULL,
    [BillableOrNonBillable] VARCHAR(20) NULL,
    [Comments] TEXT NULL,
    [TotalHours] INT NULL,
    [StartTime] VARCHAR(7) NULL,
    [EndTime] VARCHAR(7) NULL
)
GO

ALTER TABLE [dbo].[Timesheet]
ADD CONSTRAINT UQ_Timesheet_UniqueEntry
UNIQUE ([EmployeeName], [Date], [StartTime],[EndTime]);

ALTER TABLE [dbo].[Timesheet]
DROP CONSTRAINT UQ_Timesheet_UniqueEntry;

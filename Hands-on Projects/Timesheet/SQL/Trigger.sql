USE TimesheetDB
GO

CREATE TRIGGER StagingToTimesheet
ON Staging
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO TimeSheet (
        TimeSheetID,
        EmployeeID, -- This looks up the name from the source table against the employee table
        [Date],
        DayOfWeek,
        ClientID, -- This looks up the name from the source table against the Client table
        ClientProjectName,
        [Description],
        BillableOrNonBillable,
        Comments,
        TotalHours ,-- takes the value and divdes by 60 to convert the minutes to hours in decimal format
        StartTime,
        EndTime
    )
    SELECT 
        i.TimeSheetID,
        e.ID,
        i.[Date],
        i.DayOfWeek,
        c.ClientID,
        i.ClientProjectName,
        i.[Description],
        i.BillableOrNonBillable,
        i.Comments,
        CAST(i.TotalHours AS DECIMAL(5,2)) / 60, -- Convert minutes to hours
        i.StartTime,
        i.EndTime
    FROM inserted i
    LEFT JOIN Employee e ON i.EmployeeName = e.EmployeeName
    LEFT JOIN Client c ON i.Client = c.ClientName
    WHERE i.Client IS NOT NULL;
GO
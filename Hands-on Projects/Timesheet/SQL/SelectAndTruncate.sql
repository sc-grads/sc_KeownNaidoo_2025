SELECT *
  FROM [TimesheetDB].[dbo].[Timesheet]

  SELECT *
  FROM [TimesheetDB].[dbo].[ErrorLog]

  SELECT*
  FROM [TimesheetDB].[dbo].[Employee]

  Truncate table [dbo].[AuditLog]
Truncate table [dbo].[ErrorLog]
Truncate table [dbo].[Staging]
Truncate table [dbo].[Timesheet]


CREATE TABLE SQLBackupRestoreTest (
	ID INT NOT NULL PRIMARY KEY,
	loginname VARCHAR(100) NOT NULL,
	logindate DATETIME NOT NULL DEFAULT getdate()
)
GO


select *  from SQLBackupRestoreTest
-- 21 rows
insert into SQLBackupRestoreTest (ID,loginname) values (1, 'test1')
insert into SQLBackupRestoreTest (ID,loginname) values (2, 'test2')
insert into SQLBackupRestoreTest (ID,loginname) values (3, 'test3')
insert into SQLBackupRestoreTest (ID,loginname) values (4, 'test4')
insert into SQLBackupRestoreTest (ID,loginname) values (5, 'test5')
-- FULL Back up 5 rows

BACKUP DATABASE [master] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\master.bak'
WITH NOFORMAT, NOINIT,  NAME = N'master-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

USE [master]
RESTORE DATABASE [master] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\master.bak' 
WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO



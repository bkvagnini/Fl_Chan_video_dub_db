/****** Object:  BackupDevice [HourlyFullBackup]    Script Date: 06/29/2010 15:08:47 ******/
EXEC master.dbo.sp_addumpdevice  @devtype = N'disk', @logicalname = N'HourlyFullBackup', @physicalname = N'E:\database_backups\autobackup\HourlyFullBackup'
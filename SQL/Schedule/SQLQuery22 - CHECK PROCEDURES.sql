USE PD_318_DML;
GO

EXEC sp_ScheduleForGroup 'PV_318', '%MS SQL Server';
--SELECT * FROM Groups WHERE group_name='PV_318';
--SELECT * FROM Disciplines WHERE discipline_name LIKE '%MS SQL Server';
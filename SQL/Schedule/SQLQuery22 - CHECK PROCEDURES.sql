USE PD_318_DML;
GO

EXEC sp_SetScheduleForStacionar N'PV_318', N'%ADO.NET%', N'Ковтун', N'2024-12-02'

EXEC sp_ScheduleForGroup 'PV_318', '%ADO.NET%';
--EXEC sp_pr
--SELECT * FROM Groups WHERE group_name='PV_318';
--SELECT * FROM Disciplines WHERE discipline_name LIKE '%MS SQL Server';
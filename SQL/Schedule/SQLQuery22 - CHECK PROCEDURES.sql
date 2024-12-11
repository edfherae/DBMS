USE PD_318_DML;
GO

--DELETE FROM Schedule 


EXEC sp_SetScheduleForStacionar N'PV_318', N'%MS SQL Server%', N'Ковтун', N'2024-12-02'
SELECT * FROM Schedule

--SELECT * FROM Groups

--SELECT * FROM Schedule WHERE [date] =N'2024-11-02' AND 16 = [group]

--EXEC sp_ScheduleForGroup 'PV_318', '%ADO.NET%';
--EXEC sp_ScheduleForGroup 'PV_318', N'%MS SQL Server%';

--SELECT
--	[id] = day_off_id,
--	[Дата] = [date],
--	[Праздник] = (SELECT holiday_name FROM Holidays WHERE holiday_id = holiday)
--FROM DaysOFF

--DELETE FROM Schedule WHERE [group] = 16 AND discipline = 7

---SELECT * FROM Schedule WHERE [group] = 16 AND discipline = 7

--EXEC sp_pr
--SELECT * FROM Groups WHERE group_name='PV_318';
--SELECT * FROM Disciplines WHERE discipline_name LIKE '%MS SQL Server';
USE PD_318_DML
GO

DELETE FROM DaysOFF --WHERE [date] BETWEEN '2022-02-20' AND '2026-03-15';

SET DATEFIRST 1;

--EXEC sp_NewYearDaysFor 2024;
--EXEC sp_MayHolidaysFor 2024;
--EXEC sp_SummerHolidaysFor 2024;

EXEC sp_SetDaysOffFor 2024

--SELECT
--	[date],
--	DATENAME(WEEKDAY, [date]),
--	holiday_name
--FROM DaysOFF JOIN Holidays ON(holiday = holiday_id)
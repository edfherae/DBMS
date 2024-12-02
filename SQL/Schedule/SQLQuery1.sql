USE PD_318_DML;
GO

DECLARE @start_date AS DATE = '2024-10-25'
DECLARE @time		AS TIME	= '18:30'
DECLARE @group		AS INT	= (SELECT group_id FROM Groups WHERE group_name = 'PV_318')
DECLARE @discipline AS SMALLINT = (SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE ('%MS SQL Server'))
DECLARE @teacher	AS INT = (SELECT teacher_id FROM Teachers WHERE first_name = N'����')

PRINT(@group)
PRINT (@discipline)
PRINT(@teacher)

--SET @date = @start_date;

DECLARE @date		AS DATE = @start_date
DECLARE @number_of_lessons AS SMALLINT = 
	(SELECT number_of_lessons FROM Disciplines WHERE discipline_id = @discipline)

PRINT(@number_of_lessons)

DECLARE @number_of_lesson AS SMALLINT = 0;
WHILE (@number_of_lesson < @number_of_lessons)
BEGIN
	SET @number_of_lesson = @number_of_lesson + 1;

	PRINT('
	')
	PRINT (@number_of_lesson);

	SET @date = IIF(@time = '20:00', DATEADD(DAY, 1, @date), @date);
	PRINT(@date);
	SET @time = IIF(@number_of_lesson % 2 = 1, '18:30', '20:00');
	PRINT(@time);

	INSERT Schedule
			([date], [time], [group], discipline, teacher, spent)
	VALUES	(@date, @time, @group, @discipline, @teacher, IIF([@date] < GETDATE(), 1, 0) )  ;
END

SELECT * FROM Schedule
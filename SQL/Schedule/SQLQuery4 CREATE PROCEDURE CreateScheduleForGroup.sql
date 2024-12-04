USE PD_318_DML;
GO

CREATE PROCEDURE sp_CreateScheduleForGroup
	@date_of_lesson		DATE,
	@group_name			NVARCHAR(16),
	@discipline_name	NVARCHAR(256),
	@teacher_number		SMALLINT,
	@subject			NVARCHAR(MAX)
	--@number_of_lessons	SMALLINT
AS
BEGIN

	DECLARE @group_id		AS INT		= (SELECT group_id FROM Groups WHERE group_name = @group_name);
	DECLARE @discipline_id	AS SMALLINT = (SELECT discipline_id FROM Disciplines WHERE discipline_name = @discipline_name);
	DECLARE @time			AS TIME		= (SELECT learning_time FROM Groups WHERE group_id = @group_id);
	DECLARE @teacher_id		AS SMALLINT	= (SELECT * FROM Teachers WHERE teacher_id = @teacher_number)

	INSERT INTO Schedule
			([date],			[time], [group],	discipline,		teacher,		[subject],	spent)
	VALUES	(@date_of_lesson,	@time,	@group_id,	@discipline_id,	@teacher_id,	@subject,	IIF(@date_of_lesson < GETDATE(), 1, 0) )
END

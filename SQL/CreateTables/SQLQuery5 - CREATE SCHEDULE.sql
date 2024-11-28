USE AcademySQL
GO

CREATE TABLE Schedule
(
	lesson_id	BIGINT PRIMARY KEY IDENTITY(1,1),
	[date]		DATE	NOT NULL,
	[time]		TIME	NOT NULL,
	[group]		INT		NOT NULL	CONSTRAINT FK_Schedule_Groups		FOREIGN KEY ([group])		REFERENCES Groups(group_id),
	discipline	SMALLINT NOT NULL	CONSTRAINT FK_Schedule_Disciplines	FOREIGN KEY (discipline)	REFERENCES Disciplines(discipline_id),
	teacher		INT		NOT NULL	CONSTRAINT FK_Schedule_Teachers		FOREIGN KEY (teacher)		REFERENCES Teachers(teacher_id),
	spent		BIT		NOT NULL,
	[subject] NVARCHAR(256)
);
GO
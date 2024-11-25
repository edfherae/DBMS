USE AcademySQL;
GO

CREATE TABLE Schedule
(
	lesson_id INT PRIMARY KEY,
	[date] DATE NOT NULL,
	[time] TIME NOT NULL,
	[group] INT NOT NULL,
	discipline SMALLINT NOT NULL,
	teacher INT NOT NULL,
	spent BIT NOT NULL,
	[subject] NVARCHAR(256),

	CONSTRAINT FK_Schedule_group
	FOREIGN KEY ([group]) REFERENCES Groups(group_id),

	CONSTRAINT FK_Schedule_discipline
	FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id),

	CONSTRAINT FK_Schedule_teacher
	FOREIGN KEY (teacher) REFERENCES Teachers(teacher_id)
);
GO
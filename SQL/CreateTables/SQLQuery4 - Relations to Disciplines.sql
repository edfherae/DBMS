USE AcademySQL
GO

CREATE TABLE TeachersDisciplinesRelation
(
	teacher		INT,
	discipline	SMALLINT,
	PRIMARY KEY (teacher, discipline),

	CONSTRAINT FK_TDR_teacher
	FOREIGN KEY (teacher) REFERENCES Teachers(teacher_id),

	CONSTRAINT FK_TDR_discipline
	FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id)
);

CREATE TABLE DirectionsDisciplineRelation
(
	direction	TINYINT,
	discipline	SMALLINT,
	PRIMARY KEY (direction, discipline),

	CONSTRAINT FK_DDR_direction
	FOREIGN KEY (direction) REFERENCES Directions(direction_id),

	CONSTRAINT FK_DDR_discipline
	FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id)
);

CREATE TABLE CompleteDisciplines
(
	[group] INT,
	discipline SMALLINT,
	PRIMARY KEY ([group], discipline),

	CONSTRAINT FK_CD_Group
	FOREIGN KEY ([group]) REFERENCES Groups(group_id),

	CONSTRAINT FK_CD_discipline
	FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id)
);
GO
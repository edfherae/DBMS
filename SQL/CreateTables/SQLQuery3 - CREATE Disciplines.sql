USE AcademySQL
GO

CREATE TABLE Disciplines
(
	discipline_id		SMALLINT		PRIMARY KEY,
	discipline_name		NVARCHAR(256)	NOT NULL,
	number_of_lessons	SMALLINT		NOT NULL,
);

CREATE TABLE RequiredDisciplines
(
	discipline			SMALLINT, 
	required_discipline SMALLINT,
	PRIMARY KEY (discipline, required_discipline),
	CONSTRAINT FK_RD_TargetDiscipline_To_Disciplines --
	FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id),
	
	CONSTRAINT FK_RD_RequiredDiscipline_2_Disciplines 
	FOREIGN KEY (required_discipline) REFERENCES Disciplines(discipline_id)
);

CREATE TABLE DependentDiscipline
(
	discipline				SMALLINT,
	dependent_discipline	SMALLINT,
	PRIMARY KEY (discipline, dependent_discipline),

	CONSTRAINT FK_DD_TargetDiscipline_2_Disciplines
	FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id),

	CONSTRAINT FK_DD_DependentDescipline_2_Disciplines
	FOREIGN KEY (dependent_discipline) REFERENCES Disciplines(discipline_id),
);
GO
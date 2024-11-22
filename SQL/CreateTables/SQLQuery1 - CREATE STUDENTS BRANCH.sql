USE AcademySQL
GO

CREATE TABLE Directions
(
	direction_id	TINYINT			PRIMARY KEY,
	direction_name	NVARCHAR(256)	NOT NULL,
);

CREATE TABLE Groups
(
	group_id	INT				PRIMARY KEY,
	group_name	NVARCHAR(16)	NOT NULL,
	direction TINYINT NOT NULL CONSTRAINT FK_GroupsDirection FOREIGN KEY REFERENCES Directions(direction_id),
);

CREATE TABLE Students
(
	student_id	INT				PRIMARY KEY	IDENTITY(1,1),
	last_name	NVARCHAR(256)	NOT NULL,
	first_name	NVARCHAR(256)	NOT NULL,
	middle_name NVARCHAR(256)	NULL,
	birth_date	DATE			NOT NULL,
	[group]		INT -- вадратные скобки, иначе ссылаетс€ на что то другое
	CONSTRAINT FK_StudentsGroup FOREIGN KEY REFERENCES Groups(group_id),
);
GO
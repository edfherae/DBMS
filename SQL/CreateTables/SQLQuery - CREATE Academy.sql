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

CREATE TABLE Teachers
(
	teacher_id	INT				PRIMARY KEY IDENTITY(1,1),
	last_name	NVARCHAR(150)	NOT NULL,
	first_name	NVARCHAR(150)	NOT NULL,
	middle_name NVARCHAR(150)	NULL,
	birth_date	DATE			NOT NULL,
	work_since	DATE			NOT NULL
);

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

CREATE TABLE Exams
(
	student INT,
	lesson INT,
	grade TINYINT, --constraint
	PRIMARY KEY (student, lesson),

	CONSTRAINT FK_Exams_student
	FOREIGN KEY (student) REFERENCES Students(student_id),

	CONSTRAINT FK_Exams_lesson
	FOREIGN KEY (lesson) REFERENCES Schedule(lesson_id)
);

CREATE TABLE Grades
(
	student INT,
	lesson INT,
	grade1 TINYINT NULL, --constraint
	grade2 TINYINT NULL,
	spent BIT NOT NULL,
	PRIMARY KEY (student, lesson),

	CONSTRAINT FK_Grades_student
	FOREIGN KEY (student) REFERENCES Students(student_id),

	CONSTRAINT FK_Grades_lesson
	FOREIGN KEY (lesson) REFERENCES Schedule(lesson_id)
);
GO
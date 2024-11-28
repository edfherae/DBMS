USE AcademySQL
GO

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
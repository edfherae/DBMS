USE AcademySQL;

INSERT TeachersDisciplinesRelation
		(teacher,	discipline)
VALUES
		(1,			1),
		(1,			3),
		(1,			4),
		(1,			5),
		(1,			6),

		(2,			1),
		(2,			3),
		(2,			4),
		(2,			5),
		(2,			6),

		(3,			2);

SELECT * FROM TeachersDisciplinesRelation;
SELECT 
		FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')) AS N'Ф.И.О.',
		TeachersDisciplinesRelation.discipline AS N'Дисциплина'
FROM Teachers, TeachersDisciplinesRelation
WHERE TeachersDisciplinesRelation.teacher = teacher_id
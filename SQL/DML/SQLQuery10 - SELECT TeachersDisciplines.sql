SELECT 
		FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')) AS N'�.�.�.',
		TeachersDisciplinesRelation.discipline AS N'����������'
FROM Teachers, TeachersDisciplinesRelation
WHERE TeachersDisciplinesRelation.teacher = teacher_id
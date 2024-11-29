SELECT 
		discipline_name AS N'Название дисциплины',
		COUNT(teacher_id) AS 'Количество учителей'
FROM Disciplines, Teachers, TeachersDisciplinesRelation
WHERE TeachersDisciplinesRelation.discipline = TeachersDisciplinesRelation.teacher
GROUP BY discipline_name
;
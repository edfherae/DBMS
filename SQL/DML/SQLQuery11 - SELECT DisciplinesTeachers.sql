SELECT 
		discipline_name AS N'�������� ����������',
		COUNT(teacher_id) AS '���������� ��������'
FROM Disciplines, Teachers, TeachersDisciplinesRelation
WHERE TeachersDisciplinesRelation.discipline = TeachersDisciplinesRelation.teacher
GROUP BY discipline_name
;
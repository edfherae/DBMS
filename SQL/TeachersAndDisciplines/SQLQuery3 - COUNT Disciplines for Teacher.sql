USE PD_318_DML;

SELECT
		[Ф.И.О.]				= FORMATMESSAGE('%s %s %s', last_name, first_name, ISNULL(middle_name, N'')),
		[Количество дисциплин]	= COUNT(discipline_id)
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE	teacher = teacher_id
AND		discipline = discipline_id
GROUP BY last_name, first_name, middle_name
ORDER BY [Количество дисциплин]
;
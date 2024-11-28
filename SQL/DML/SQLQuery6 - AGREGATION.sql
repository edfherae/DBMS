USE AcademySQL;

SELECT 
	--COUNT(direction_id)
	--group_name AS N'Группа',
	direction_name AS N'Направление обучения',
	COUNT(group_id) AS N'Количество групп',
	COUNT(student_id) AS N'Количество студентов'
FROM	Groups, Directions, Students
WHERE [group] = group_id
AND	direction=direction_id 
GROUP BY direction_name
;
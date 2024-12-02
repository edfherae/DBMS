USE PD_318_DML;

SELECT 
	--COUNT(direction_id)
	--group_name AS N'Группа',
	direction_name AS N'Направление обучения',
	COUNT(DISTINCT group_id) AS N'Количество групп',
	COUNT(student_id) AS N'Количество студентов'
FROM	Groups, Directions, Students
WHERE	direction=direction_id 
AND		[group] = group_id
GROUP BY direction_name
; --DISTINCT
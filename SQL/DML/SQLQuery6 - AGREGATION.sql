USE AcademySQL;

SELECT 
	--COUNT(direction_id)
	--group_name AS N'������',
	direction_name AS N'����������� ��������',
	COUNT(group_id) AS N'���������� �����',
	COUNT(student_id) AS N'���������� ���������'
FROM	Groups, Directions, Students
WHERE [group] = group_id
AND	direction=direction_id 
GROUP BY direction_name
;
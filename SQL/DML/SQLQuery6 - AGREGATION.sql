USE PD_318_DML;

SELECT 
	--COUNT(direction_id)
	--group_name AS N'������',
	direction_name AS N'����������� ��������',
	COUNT(DISTINCT group_id) AS N'���������� �����'
	--COUNT(student_id) AS N'���������� ���������'
FROM	Groups, Directions
WHERE	direction=direction_id 
GROUP BY direction_name
HAVING COUNT(group_id) > 3
; --DISTINCT
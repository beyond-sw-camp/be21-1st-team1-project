-- 세부 일정 조회

set @schedule_id = 2;

SELECT t.`date`, t.start_time, p.name, t.memo
FROM todo_schedule t
LEFT JOIN place p ON p.place_id = t.place_id
WHERE t.schedule_id = @schedule_id
ORDER BY t.`date`, t.start_time;
-- 세부 일정 삭제
delimiter //

DROP PROCEDURE IF EXISTS DeleteTodo //

create procedure DeleteTodo(
	in p_user_id BIGINT,
	in p_schedule_id BIGINT,
	in p_todo_id BIGINT
) 
begin
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'DeleteTodo failed: DB exception occurred.';
    END;

    START TRANSACTION;
    
    -- 이 todo가 존재하고, 해당 스케줄의 생성자가 p_user_id 인지 확인
    IF NOT EXISTS (
        SELECT 1
        FROM `Todo_Schedule` t
        JOIN `Schedule` s ON s.`schedule_id` = t.`schedule_id`
        WHERE t.`todo_id` = p_todo_id
          AND t.`schedule_id` = p_schedule_id
          AND s.`user_id` = p_user_id
        FOR UPDATE
    ) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Forbidden or not found: todo does not belong to this user.';
    END IF;

	
	delete from Todo_Schedule ts
	where ts.todo_id = p_todo_id 
	and ts.schedule_id = p_schedule_id;
	
    COMMIT;
    
end //

delimiter ;

-- 세부 일정 삭제 성공
call DeleteTodo(20,9,23);

-- 세부 일정 삭제 실패
call DeleteTodo(20,9,23);
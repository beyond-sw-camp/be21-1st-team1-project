-- 일정 삭제 
delimiter //

DROP PROCEDURE IF EXISTS DeleteSchedule //
create procedure DeleteSchedule(
	in p_user_id BIGINT,
	in p_schedule_id BIGINT
)
begin
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'DeleteScheduleByOwner failed: DB exception occurred.';
    END;

    START TRANSACTION;
    
	-- 존재하는 스케줄인지 확인 
    IF NOT EXISTS (
        SELECT 1 FROM `Schedule`
        WHERE schedule_id = p_schedule_id
          AND user_id    = p_user_id
    ) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '스케줄을 찾을 수 없습니다.';
    END IF;
	
	DELETE From Todo_Schedule ts where ts.schedule_id = p_schedule_id;
	DELETE From Schedule s where s.schedule_id = p_schedule_id;
    commit;
end //

delimiter ;

-- 일정 삭제 성공
call DeleteSchedule(10,10);

-- 존재하지 않는 일정 삭제
call DeleteSchedule(1,11);

-- 자신이 만들지 않은 일정을 삭제한 경우
call DeleteSchedule(11,10);
# 3. 일정 수정 
# update
SET @start_date = '2025-10-10';
SET @end_date = '2025-10-12';
SET @concept_id = 3;
SET @group_id = 1;
SET @status = 0;
SET @title = '수정된 일정';
SET @memo = '수정된 메모';
SET @start_time = '8';
SET @user_id = 5;
SET @schedule_id = 18;
SET @place_id = 15;
SET @edit_date = '2025-10-11';
SET @start_time = 11;


DELIMITER //
CREATE PROCEDURE ScheduleEdit()
BEGIN
	  DECLARE i INT DEFAULT 0;
	  DECLARE day_count INT DEFAULT 0;
      DECLARE todo_id_count INT DEFAULT 0;

	  SET day_count = DATEDIFF(@end_date, @start_date);
	  SELECT MIN(todo_id) INTO todo_id_count
	    FROM todo_schedule
	   WHERE schedule_id = @schedule_id;
	
	  UPDATE schedule 
         SET start_date = @start_date
           , end_date = @end_date
           , concept_id = @concept_id
           , group_id = @group_id
           , status = @status
           , title = @title
       WHERE schedule_id = 18;

	   WHILE i < day_count DO
		     UPDATE todo_schedule
		        SET 
		            date = DATE_ADD(@start_date, INTERVAL i DAY)
     	      WHERE schedule_id = 18
	   	        AND todo_id = (
	   						   SELECT todo_id
	   						     FROM todo_schedule
	   						    WHERE schedule_id = 18
	   						      AND todo_id = todo_id_count
	   	                      );
	   SET i = i + 1;
	   SET todo_id_count = todo_id_count + 1;
	   END WHILE;
END //
DELIMITER ;

CALL ScheduleEdit();

SELECT * FROM schedule WHERE user_id = 5;
SELECT * FROM todo_schedule WHERE schedule_id = 18;

# 3-4. 날짜 별 상세 일정 변경
# schedule_id = 3
SELECT * FROM todo_schedule WHERE schedule_id = 18;
SELECT * FROM schedule WHERE schedule_id = 18 AND user_id = 5;
UPDATE todo_schedule
   SET place_id = @place_id
     , start_time = @start_time
 WHERE schedule_id = @schedule_id
   AND date = @edit_date;

# 3-5. 일정 삭제 
DELETE FROM schedule
 WHERE schedule_id = 2;

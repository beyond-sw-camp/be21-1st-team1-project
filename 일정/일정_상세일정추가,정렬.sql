-- 나이로 정렬 후 정보 공개


DELIMITER //

CREATE PROCEDURE show_schedule(
    IN conceptid INT,
    IN input_user_id BIGINT
)
BEGIN
    DECLARE user_age INT;

    SELECT TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) 
    INTO user_age
    FROM user
    WHERE user_id = input_user_id;

    SELECT 
        ts.place_id,
        COUNT(ts.schedule_id) AS schedule_count
    FROM 
        todo_schedule ts
        JOIN schedule s ON ts.schedule_id = s.schedule_id
        JOIN user u ON s.user_id = u.user_id
    WHERE 
        FLOOR(TIMESTAMPDIFF(YEAR, u.birthdate, CURDATE()) / 10) 
        = FLOOR(user_age / 10)
    GROUP BY 
        ts.place_id
    ORDER BY 
        schedule_count DESC;

    IF conceptid = 1 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 1  
        LIMIT 50;

    ELSEIF conceptid = 2 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 2
        LIMIT 50;

    ELSEIF conceptid = 3 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 3
        LIMIT 50;

    ELSEIF conceptid = 4 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 4
        LIMIT 50;

    ELSEIF conceptid = 5 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 5
        LIMIT 10;
    END IF;
end //

DELIMITER ;

CALL show_schedule (1, 13);


DELIMITER //

CREATE PROCEDURE insert_todo_if_not_exists(
    IN input_schedule_id BIGINT,
    IN input_place_id BIGINT,
    IN input_date DATE,          -- 추가할 날짜 
    IN input_memo TEXT,          -- 메모
    IN input_start_time INT      -- 시작 시간
)
BEGIN
    DECLARE cnt INT DEFAULT 0;
    DECLARE place_exists INT DEFAULT 0;
    DECLARE sched_exists INT DEFAULT 0;

    SELECT COUNT(*) INTO place_exists FROM Place WHERE place_id = input_place_id;
    IF place_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid place_id: not found in Place';
    END IF;

    SELECT COUNT(*) INTO sched_exists FROM Schedule WHERE schedule_id = input_schedule_id;
    IF sched_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid schedule_id: not found in Schedule';
    END IF;

    
    SELECT COUNT(*) INTO cnt
    FROM Todo_Schedule
    WHERE place_id = input_place_id
      AND `date` = input_date;


    IF cnt = 0 THEN
        INSERT INTO Todo_Schedule (`date`, memo, schedule_id, place_id, start_time)
        VALUES (input_date, input_memo, input_schedule_id, input_place_id, input_start_time);
		
    UPDATE referenced_num rn
        JOIN schedule s  ON s.schedule_id = input_schedule_id
        JOIN user     u  ON u.user_id     = s.user_id
        SET rn.`count` = rn.`count` + 1
        WHERE rn.place_id = input_place_id
          AND rn.age_id = (TIMESTAMPDIFF(YEAR, u.birthdate, CURDATE()) DIV 10);		
    
    
        SELECT CONCAT('장소 ', input_place_id, ' 일정이 추가되었습니다.') AS message;
    ELSE
        SELECT '이미 해당 날짜에 해당 장소의 일정이 존재합니다.' AS message;
    END IF;
END //

DELIMITER ;
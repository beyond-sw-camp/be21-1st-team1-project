-- 6. 일정 공유
DROP PROCEDURE IF EXISTS GetAccessibleSchedules;

DELIMITER //

CREATE PROCEDURE GetAccessibleSchedules (
    IN p_user_id BIGINT
)
BEGIN
    SELECT u.user_id,
           s.schedule_id,
    	   s.title,
           s.start_date,
           s.end_date,
           u.nickname AS '작성자닉네임',
           c.concept AS '컨셉',
           t.date AS '날짜',
           t.memo AS '할일',
        	   p.big_location AS '위치(시)',
           p.small_location AS '위치(읍/면/동)',
           p.description AS '장소설명',
           CASE 
           	   WHEN s.status = 1 THEN '공개'
               ELSE '비공개'
           END AS '공개여부'
    FROM Schedule s
    JOIN `User` u ON s.user_id = u.user_id
    JOIN Concept c ON s.concept_id = c.concept_id
    LEFT JOIN Todo_Schedule t ON s.schedule_id = t.schedule_id
    LEFT JOIN Place p ON t.place_id = p.place_id
    WHERE s.status = TRUE          -- 공개 일정
       OR s.user_id = p_user_id    -- 본인이 작성한 일정
    ORDER BY u.user_id ASC, s.start_date ASC, t.start_time ASC;
END //

DELIMITER ;

CALL GetAccessibleSchedules(5);
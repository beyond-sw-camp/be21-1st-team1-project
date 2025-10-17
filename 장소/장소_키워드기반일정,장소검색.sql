-- 3. 키워드 기반 일정 / 장소 검색
DROP PROCEDURE IF EXISTS SearchByKeyword;

DELIMITER //

CREATE PROCEDURE SearchByKeyword (
    IN keyword VARCHAR(50)
)
BEGIN
    -- 장소 검색
    SELECT 'PLACE' AS type,
           name AS title,
           description,
           big_location,
           small_location
    FROM Place
    WHERE name LIKE CONCAT('%', keyword, '%')
       OR description LIKE CONCAT('%', keyword, '%')
    
    UNION ALL
    
    -- 일정 검색
    SELECT 'SCHEDULE' AS type,
           s.title,
           t.memo AS description,
           p.big_location,
           p.small_location
    FROM Schedule s
    LEFT JOIN Todo_Schedule t ON s.schedule_id = t.schedule_id
    LEFT JOIN Place p ON t.place_id = p.place_id
    JOIN Concept c ON s.concept_id = c.concept_id
    WHERE t.memo LIKE CONCAT('%', keyword, '%')
       OR c.concept LIKE CONCAT('%', keyword, '%');
END //

DELIMITER ;

CALL SearchByKeyword('카페');
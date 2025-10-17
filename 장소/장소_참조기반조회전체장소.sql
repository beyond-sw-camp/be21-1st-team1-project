-- 참조 횟수 기반 정렬
-- 전체장소 완 
-- call RefByAgeAllPlace(10,70); 10대부터 70대까지의 참조 합

DELIMITER //

DROP PROCEDURE IF EXISTS RefByAgeAllPlace //
CREATE PROCEDURE RefByAgeAllPlace(
    IN p_age_from INT,
    IN p_age_to   INT
)
BEGIN
    -- from/to 뒤바뀌면 보정
    IF p_age_from > p_age_to THEN
        SET @t = p_age_from; SET p_age_from = p_age_to; SET p_age_to = @t;
    END IF;

    SELECT
        p.*,  -- 장소의 모든 컬럼
        COALESCE(rc.ref_count, 0) AS ref_count
    FROM `Place` p
    LEFT JOIN (
        SELECT
            r.place_id,
            SUM(r.`count`) AS ref_count
        FROM `Referenced_Num` r
        JOIN `Age` a ON a.age_id = r.age_id
        WHERE a.age BETWEEN p_age_from AND p_age_to
        GROUP BY r.place_id
    ) rc ON rc.place_id = p.place_id
    ORDER BY ref_count DESC, p.place_id;
END //

DELIMITER ;

-- 전체 장소 참조횟수 기반 조회(내림차순) 전연령 
call RefByAgeAllPlace(10,80);

-- 10,20,30대 참조 횟수 기반 조회
call RefByAgeAllPlace(10,30);
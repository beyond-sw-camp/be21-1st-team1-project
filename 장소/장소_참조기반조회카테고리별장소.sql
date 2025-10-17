-- 참조 횟수 기반 정렬
-- 특정 카테고리 
-- call RefByAgeCategory(10,80,3);

DELIMITER //

DROP PROCEDURE IF EXISTS RefByAgeCategory //
CREATE PROCEDURE RefByAgeCategory(
    IN p_age_from    INT,
    IN p_age_to      INT,
    IN p_category_id INT
)
BEGIN
    IF p_age_from > p_age_to THEN
        SET @t = p_age_from; SET p_age_from = p_age_to; SET p_age_to = @t;
    END IF;

    SELECT
        p.*,
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
    WHERE p.category_id = p_category_id
    ORDER BY ref_count DESC, p.place_id;
END //

DELIMITER ;

-- 카테고리별 참조횟수 기반 조회 (숙카테고리)
call RefByAgeCategory(10,80,1);
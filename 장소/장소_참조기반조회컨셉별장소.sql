-- 참조 횟수 기반 정렬
-- 특정 컨셉 
-- call RefByAgeConcept(10,30,2);

DELIMITER //

DROP PROCEDURE IF EXISTS RefByAgeConcept //
CREATE PROCEDURE RefByAgeConcept(
    IN p_age_from   INT,
    IN p_age_to     INT,
    IN p_concept_id INT
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
    join Place_Category pc on pc.category_id = p.category_id 
    WHERE p.concept_id = p_concept_id
    ORDER BY ref_count DESC, p.place_id;
END //

DELIMITER ;

-- 카테고리별 참조횟수 조회(가족카테고리)
call RefByAgeConcept(10,80,1);
-- 특정 장소 데이터의 상세 정보 조회 
-- 장소 아이디를 넣으면 참조횟수를 포함한 상세정보가 조회
DELIMITER //

DROP PROCEDURE IF EXISTS GetPlaceDetail //
CREATE PROCEDURE GetPlaceDetail(IN p_place_id BIGINT(20))
BEGIN
  SELECT
    p.place_id       AS `장소ID`,
    p.`name`         AS `이름`,
    c.`category`     AS `카테고리`,
    p.`big_location` AS `대분류 위치`,
    p.`small_location` AS `소분류 위치`,
    p.`description`  AS `설명`,
    cn.`concept`     AS `컨셉`,
    COALESCE(rf.reference_count, 0) AS `참조횟수`
  FROM `Place` p
  JOIN `Place_Category` c ON p.category_id = c.category_id
  JOIN `Concept` cn       ON p.concept_id  = cn.concept_id
  LEFT JOIN (
    SELECT r.place_id, SUM(COALESCE(r.`count`,0)) AS reference_count
    FROM `Referenced_Num` r
    GROUP BY r.place_idㅌ
  ) rf ON rf.place_id = p.place_id
  WHERE p.place_id = p_place_id ;
END //

DELIMITER ;

-- 참조횟수 포함 장소데이터 조
Call GetPlaceDetail(1);
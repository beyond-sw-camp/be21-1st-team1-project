-- 1. 장소 데이터 추가
DROP PROCEDURE IF EXISTS AddPlace;

DELIMITER // 

CREATE PROCEDURE AddPlace (
	IN a_name VARCHAR(20),
	IN a_category_id INT,
    IN a_big_location VARCHAR(100),
    IN a_small_location VARCHAR(50),
    IN a_description TEXT,
    IN a_concept_id INT
)
BEGIN
	DECLARE v_place_id BIGINT DEFAULT 0;

	INSERT INTO Place (name, category_id, big_location, small_location, description, concept_id)
	VALUES (a_name, a_category_id, a_big_location, a_small_location, a_description, a_concept_id);

	SET v_place_id = LAST_INSERT_ID();
	
-- Referenced_Num 테이블에 항목 추가
    INSERT INTO Referenced_Num (place_id, age_id, count)
    SELECT v_place_id, age_id, 0
    FROM Age;
END //

DELIMITER ;

CALL AddPlace('협재 해수욕장', 5, '제주시', '한림읍', NULL, 1);
SELECT * FROM place;

SELECT * FROM referenced_num;
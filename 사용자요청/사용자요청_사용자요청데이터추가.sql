-- 사용자 요청 데이터 추가

DELIMITER //

CREATE PROCEDURE addRequest(IN p_request_id BIGINT)
BEGIN
    DECLARE v_place_id BIGINT DEFAULT 0;

	-- 요청 상태를 '수락'으로 변경
	UPDATE user_request
	SET status_id = 2
	WHERE request_id = p_request_id;
	
	-- 장소 데이터에 정보 추가
	INSERT INTO place (name, category_id, big_location, small_location, description, concept_id)
	SELECT name, category_id, big_location, small_location, description, concept_id
	FROM user_request
	WHERE request_id = p_request_id;
	
	-- 새 place_id 확보
	SET v_place_id = LAST_INSERT_ID();
	
	-- Referenced_Num 테이블에 항목 추가
	INSERT INTO Referenced_Num (place_id, age_id, count)
    SELECT v_place_id, age_id, 0
    FROM Age;
END //

DELIMITER ;

CALL addRequest(1);
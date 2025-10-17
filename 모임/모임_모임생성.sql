-- 모임 생성

DELIMITER //

CREATE PROCEDURE createMeeting(
	IN p_name VARCHAR(50),
	IN p_creator BIGINT)
BEGIN
    DECLARE v_group_id BIGINT DEFAULT 0;

	-- 모임 생성
    INSERT INTO `group`(name, creator)
    VALUES (p_name, p_creator);
	
	SET v_group_id = LAST_INSERT_ID();
	
	-- 모임 생성자를 자동 멤버로 추가
	INSERT INTO Group_Friend (group_id, user_id, status_id, role)
    VALUES (v_group_id, p_creator, 2, 'owner'); -- 상태식별번호는 '반영'
END //

DELIMITER ;

CALL createMeeting('새로운 모임', 1);
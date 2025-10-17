-- 친구 삭제

DELIMITER //

CREATE PROCEDURE deleteFriend(
	IN p_user_id BIGINT,
	IN p_friend_id BIGINT)
BEGIN
	-- 두 사람 사이의 친구관계 제거(양방향)
    DELETE FROM friend
    WHERE (user_id = p_user_id AND user_id2 = p_friend_id)
    OR (user_id = p_friend_id AND user_id2 = p_user_id);

	-- 두 사람이 같이 속한 모임 중
	-- 모임의 생성자가 p_user_id 인 경우: p_friend_id만 탈퇴
	-- 그 모임의 생성자가 p_friend_id 인 경우: p_user_id만 탈퇴
	-- 그 외 둘 다 생성자가 아닌 경우: 아무도 탈퇴하지 않음
	DELETE gf
    FROM group_friend AS gf
    JOIN `Group` AS g ON g.group_id = gf.group_id
    JOIN group_friend AS a ON a.group_id = g.group_id AND a.user_id = p_user_id
    JOIN group_friend AS b ON b.group_id = g.group_id AND b.user_id = p_friend_id
    WHERE g.creator IN (p_user_id, p_friend_id)
    AND gf.user_id = CASE
						WHEN g.creator = p_user_id   THEN p_friend_id
                     	WHEN g.creator = p_friend_id THEN p_user_id
                  	 END;
END //

DELIMITER ;

CALL deleteFriend(1, 2);